view: indices_operacionais {
  sql_table_name: `tbg-cloud-dev.SAP_LOG.indices_operacionais` ;;
  dimension_group: data_formada {
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
    sql: last_day(cast(concat(${TABLE}.ano_mes, '-', '01') as date)) ;;
  }
  dimension: mes_ano_escrito {
    label: "Mês Ano"
    type: string
    sql: format_date('%b %Y',${data_formada_date}) ;;
  }
  dimension: qtd_areas {
    type: number
    sql: ${TABLE}.qtd_area ;;
  }
  dimension: ano_mes {
    type: string
    sql: ${TABLE}.ano_mes ;;
  }
  dimension: confiabilidade {
    type: number
    sql: ${TABLE}.confiabilidade ;;
  }
  dimension: disponibilidade {
    type: number
    sql: ${TABLE}.disponibilidade ;;
  }
  dimension: estacao {
    type: string
    sql: ${TABLE}.estacao ;;
  }
  dimension: instalacao {
    type: string
    sql: ${TABLE}.instalacao ;;
  }
  dimension: parada_nao_programada {
    type: number
    sql: ${TABLE}.parada_nao_programada ;;
  }
  dimension: parada_programada {
    type: number
    sql: ${TABLE}.parada_programada ;;
  }
  dimension: sistema {
    type: string
    sql: ${TABLE}.sistema ;;
  }
  dimension: sum_areas {
    type: string
    sql: ${TABLE}.sum_areas ;;
  }
  measure: count {
    type: count
  }

  measure: sum_qtd_areas {
    type: sum
    sql: ${qtd_areas} ;;
  }

  measure: average_confiabilidade {
    type: average
    sql:  ${confiabilidade};;
  }

  measure: average_disponibilidade {
    type: average
    sql:  ${disponibilidade};;
  }

}
