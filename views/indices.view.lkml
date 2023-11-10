view: indices {
  sql_table_name: `tbg-cloud-dev.SAP_LOG.indices` ;;

  dimension: confiabilidade {
    type: number
    sql: ${TABLE}.confiabilidade ;;
  }
  dimension: confiabilidade_acumulado {
    type: number
    sql: ${TABLE}.confiabilidade_acumulado ;;
  }
  dimension_group: data_ {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.data_ ;;
  }
  dimension: disponibilidade {
    type: number
    sql: ${TABLE}.disponibilidade ;;
  }
  dimension: disponibilidade_acumulado {
    type: number
    sql: ${TABLE}.disponibilidade_acumulado ;;
  }
  dimension: instalacao {
    type: string
    sql: ${TABLE}.instalacao ;;
  }
  measure: count {
    type: count
  }

  measure: average_disponibilidade {
    type: average
    sql: ${TABLE}.disponibilidade ;;
  }

  measure: average_disponibilidade_acumulado{
    type: average
    sql: ${disponibilidade_acumulado} ;;
  }

  measure: average_confiabilidade {
    type: average
    sql: ${TABLE}.confiabilidade ;;
  }

  measure: average_confiabilidade_acumulado {
    type: average
    sql: ${TABLE}.confiabilidade ;;
  }
}
