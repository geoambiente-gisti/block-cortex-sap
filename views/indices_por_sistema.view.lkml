view: indices_por_sistema {
  sql_table_name: `@{GCP_PROJECT}.@{LOG_DATASET}.indices_por_sistema` ;;

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

  dimension: mes_ano_escrito {
    label: "Mês Ano"
    type: string
    sql: format_date('%b %Y',${data__date}) ;;
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
  dimension: sistema {
    type: string
    sql: ${TABLE}.sistema ;;
  }

  measure: average_disponibilidade {
    type: average
    sql: ${disponibilidade} ;;
  }

  measure: average_disponibilidade_acumulada {
    type: average
    sql: ${disponibilidade_acumulado} ;;
  }

  measure: average_confiabilidade {
    type: average
    sql: ${confiabilidade} ;;
  }

  measure: average_confiabilidade_acumulada {
    type: average
    sql: ${confiabilidade_acumulado} ;;
  }

  measure: count {
    type: count
  }
}
