view: nota_manutencao_zspmlistnote {
  sql_table_name: `@{GCP_PROJECT}.@{LOG_DATASET}.nota_manutencao_looker` ;;

  dimension: mzeit {
    type: string
    label: "Hora da nota"
    sql: extract(time from ${TABLE}.data_hora) ;;
  }
  dimension: name {
    type: string
    label: "Responsável"
    sql: ${TABLE}.responsavel ;;
  }

  dimension_group: qmdat {
    label: "Data da nota"
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
    sql:  extract(date from ${TABLE}.data_hora) ;;
  }

  dimension: mes_nota {
    order_by_field: qmdat_date
    label: "Mês"
    type: string
    sql:  cast(extract(month from ${TABLE}.data_hora) as string);;
  }

  dimension: ano_nota {
    label: "Ano"
    type: string
    sql:  cast(extract(year from ${TABLE}.data_hora) as string);;
  }

  dimension: qmnum {
    link: {
      label: "Detalhe da Nota de Manutenção"
      url: "https://tbgbr.cloud.looker.com/dashboards/6?N%C2%BA+da+nota={{ value }}&hide_filter=N%C2%BA+da+nota"
    }
    type: string
    primary_key: yes
    label: "Nº da nota de Manutenção"
    sql: ${TABLE}.n_nota ;;
  }
  dimension: qmtxt {
    type: string
    label: "Descrição"
    sql: ${TABLE}.descricao_falha ;;
  }

  dimension: metodo_deteccao {
    type: string
    label: "Método Detecção"
    sql: ${TABLE}.metodo_deteccao ;;
  }
  dimension: modo_falha {
    type: string
    label: "Modo Falha"
    sql: ${TABLE}.modo_falha ;;
  }

  dimension: tplnr {
    type: string
    label: "Local de instalação"
    sql: ${TABLE}.local_instalacao ;;
  }
  dimension: txtstat {
    type: string
    label: "Status individual de um objeto"
    sql: ${TABLE}.status ;;
  }

  dimension: is_manutencao {
    type: string
    label: "Possui Operação"
    sql: if(${nota_operacao_zspmlistnote.qmnum}=${nota_manutencao_zspmlistnote.n_nota_operacao} , "SIM", "NÃO") ;;
  }

  measure: count {
    type: count
    drill_fields: [qmnum, tplnr, name]
  }

  dimension: n_nota_operacao {
    label: "Nº Nota Operacao"
    sql: ${TABLE}.n_nota_operacao ;;
  }

  dimension: no_orderby {    type: number    sql: null ;;  }

  measure: count_distinct_mes {
    type: count_distinct
    sql: ${qmdat_month} ;;
  }

  measure: count_distinct_ano {
    type: count_distinct
    sql:  ${ano_nota};;
  }

  measure: count_open {
    type: sum
    label: "Total Em Aberto"
    drill_fields: [qmnum, tplnr, name]
    sql: case when ${txtstat} = "Em Aberto" then 1 else 0 end;;
  }
}
