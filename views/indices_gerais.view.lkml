view: indices_gerais {
  sql_table_name: `@{GCP_PROJECT}.@{LOG_DATASET}.indices_gerais` ;;

  dimension_group: data_ {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.data_ ;;
  }
  dimension: mes_ano_escrito {
    label: "Mês Ano"
    type: string
    sql: format_date('%b %Y',${data__date}) ;;
  }
  dimension: horas_mes_acumuladas {
    type: number
    sql: ${TABLE}.horas_mes_acumuladas ;;
  }
  dimension: instalacao {
    type: string
    sql: ${TABLE}.instalacao ;;
  }
  dimension: qtd_horas {
    type: number
    sql: ${TABLE}.qtd_horas ;;
  }
  dimension: paradas_nao_programada_acumulado_ano {
    type: number
    sql: ${TABLE}.paradas_nao_programada_acumulado_ano ;;
  }
  dimension: parada_programada {
    type: number
    sql: ${TABLE}.parada_programada ;;
  }
  dimension: parada_nao_programada {
    type: number
    sql: ${TABLE}.parada_nao_programada ;;
  }
  dimension: paradas_programada_acumulado_ano {
    type: number
    sql: ${TABLE}.paradas_programada_acumulado_ano ;;
  }
  dimension: sum_areas {
    type: number
    sql: ${TABLE}.sum_areas ;;
  }
  measure: count {
    type: count
  }
}
