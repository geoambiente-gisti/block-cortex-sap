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

  dimension: data_nota {
    label: "Data da nota HTML"
    description: "Data da nota"
    type: string
    sql: cast(format_date('%d/%m/%Y', ${TABLE}.data_hora) as string) ;;
  }

  dimension: descricao {
    label: "Descrição Html"
    type: string
    sql: ${nota_linha_gas_desc.descricao} ;;
  }

  # nota_linha_gas_zspmlistnote.n_nota_serial, nota_linha_gas_zspmlistnote.qmdat_date,
  #     nota_linha_gas_zspmlistnote.mzeit, nota_linha_gas_zspmlistnote.contactname,
  #     nota_linha_gas_zspmlistnote.name, nota_linha_gas_zspmlistnote.tplnr, nota_linha_gas_zspmlistnote.pltxt, responsavel.email,
  #     nota_linha_gas_zspmlistnote.txtstat

  dimension: html_info {
    label: "Notas"
    type: string
    sql: ${TABLE}.n_nota ;;
    html:
    <div>
      <b>Nota</b>: {{ value }} <br>
      <b>Data</b>: {{ nota_linha_gas_zspmlistnote.data_nota._value }} <br>
      <b>Contato</b>: {{ nota_linha_gas_zspmlistnote.contactname._value }} <br>
      <b>Responsável</b>: {{ nota_linha_gas_zspmlistnote.nome._value }} <br>
      <b>Local da Ocorrência</b>: {{ nota_linha_gas_zspmlistnote.tplnr._value }}  <br>
      <b>Descrição</b>: {{ nota_linha_gas_zspmlistnote.pltxt._value }} <br>

      <hr>
      <p style="white-space:pre">{{ nota_linha_gas_zspmlistnote.descricao._value }}<p>
      <hr>
    </div> ;;
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
