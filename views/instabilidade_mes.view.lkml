view: instabilidade_mes {
  sql_table_name: `@{GCP_PROJECT}.@{ALARME_DATASET}.instabilidade_mes` ;;

  dimension: horas_instaveis {
    type: number
    sql: ${TABLE}.horas_instaveis ;;
  }
  dimension: mes {
    type: string
    sql: ${TABLE}.mes ;;
  }
  dimension: qtd_horas {
    type: number
    sql: ${TABLE}.qtd_horas ;;
  }

  dimension_group: eventstamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year, hour]
    datatype: datetime
    sql: cast(concat(${TABLE}.mes, '-', '01') as datetime) ;;
  }

  measure: count {
    type: count
  }
}
