view: indices_acumulados {
  sql_table_name: `tbg-cloud-dev.SAP_LOG.indices_acumulados` ;;

  dimension_group: data_ {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.data_ ;;
  }

  dimension: ano_mes {
    type: string
    sql: format_date( '%Y-%m', ${data__date}) ;;
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
  dimension: paradas_nao_programada_acumulado_ano {
    type: number
    sql: ${TABLE}.paradas_nao_programada_acumulado_ano ;;
  }
  dimension: paradas_programada_acumulado_ano {
    type: number
    sql: ${TABLE}.paradas_programada_acumulado_ano ;;
  }

  dimension: horas_mes_acumuladas {
    type: number
    sql: ${TABLE}.horas_mes_acumuladas ;;
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



  measure: sum_parada_programada {
    type:  sum
    sql:  ${parada_nao_programada};;
  }

  measure: sum_parada_nao_programada {
    type:  sum
    sql:  ${parada_nao_programada};;
}
}
