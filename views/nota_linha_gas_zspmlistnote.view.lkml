view: nota_linha_gas_zspmlistnote {
  sql_table_name: `@{GCP_PROJECT}.@{LOG_DATASET}.nota_linha_gas_looker` ;;

  dimension: contactname {
    type: string
    label: "Notificante"
    sql: ${TABLE}.notificante ;;
  }

  dimension: mzeit {
    type: string
    label: "Hora da nota"
    sql: extract(TIME from ${TABLE}.data_hora) ;;
  }
  dimension: turno {
    type: string
    label: "Turno"
    sql:  case when extract(TIME from ${TABLE}.data_hora) between '07:00:00' and '15:00:00' then '07hs as 15hs'
      when extract(TIME from ${TABLE}.data_hora) between '15:00:00' and '23:00:00' then '15hs as 23hs' else '23:00hs as 07:00hs' end;;
  }
  dimension: name {
    type: string
    label: "Contato"
    sql: ${TABLE}.contato ;;
  }

  dimension: pltxt {
    type: string
    label: "Descrição"
    sql: ${TABLE}.descricao ;;
  }
  dimension: responsavel {
    type: string
    label: "Responsável"
    sql: ${TABLE}.responsavel ;;
  }

  dimension_group: qmdat {
    label: "Data Abertura"
    description: "Data da nota"
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql:  CAST(${TABLE}.data_hora as DATE) ;;

  }

  dimension: qmnum {
    link: {
      label: "Detalhe da Nota de Linha de Gás"
      url: "https://tbgbr.cloud.looker.com/dashboards/10?N%C2%BA+da+nota={{ value }}&hide_filter=N%C2%BA+da+nota"
    }
    type: string
    primary_key: yes
    label: "Nº da nota relacionamento"
    sql: ${TABLE}.n_nota ;;
  }

  dimension: n_nota_serial {
    link: {
      label: "Detalhe da Nota de Operação"
      url: "https://tbgbr.cloud.looker.com/dashboards/cortex_sap_operational::observaes_da_nota_de_linha_de_gs?N%C2%BA+da+Nota+Serial={{ value }}&hide_filter=N%C2%BA+da+Nota+Serial"
    }
    type: string
    label: "Nº da Nota"
    sql: ${TABLE}.n_nota_serial ;;
  }

  dimension: tplnr {
    type: string
    label: "Local da Ocorrência"
    sql: ${TABLE}.local_ocorrencia ;;
  }
  dimension: txtstat {
    type: string
    label: "Status individual de um objeto"
    sql: ${TABLE}.status ;;
  }
  measure: count {
    type: count
    drill_fields: [qmnum, tplnr, contactname]
  }

  measure: count_open {
    type: sum
    label: "Total Em Aberto"
    drill_fields: [qmnum, tplnr, contactname]
    sql: case when ${txtstat} = "Em Aberto" then 1 else 0 end;;
  }

  measure: count_close {
    type: sum
    label: "Total Encerrada"
    drill_fields: [qmnum, tplnr, contactname]
    sql: case when ${txtstat} = "Em Aberto" then 0 else 1 end;;
  }
}
