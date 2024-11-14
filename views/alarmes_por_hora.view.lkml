view: alarmes_por_hora {
  sql_table_name: `@{GCP_PROJECT}.@{ALARME_DATASET}.alarmes_por_hora` ;;

  dimension: hora_mes {
    type: string
    sql: ${TABLE}.hora_mes ;;
  }
  dimension: mes {
    type: string
    sql: ${TABLE}.mes ;;
  }
  dimension: qtd {
    type: number
    sql: ${TABLE}.qtd ;;
  }
  dimension: qtd_horas {
    type: number
    sql: ${TABLE}.qtd_horas ;;
  }
  dimension_group: eventstamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year, hour]
    datatype: datetime
    sql: cast(${TABLE}.eventstamp as datetime) ;;
  }
  measure: count {
    type: count
  }

  measure: sum {
    type: sum
    sql: ${TABLE}.qtd ;;
  }
}
