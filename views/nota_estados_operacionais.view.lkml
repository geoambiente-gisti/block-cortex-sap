view: nota_estados_operacionais {
  sql_table_name: `@{GCP_PROJECT}.@{LOG_DATASET}.nota_estados_operacionais` ;;

  dimension: cod_local {
    type: string
    sql: ${TABLE}.cod_local ;;
  }
  dimension: mes_ano_escrito {
    label: "Mês Ano"
    type: string
    sql: format_date('%b %Y',${data_hora_date}) ;;
  }
  dimension_group: data_encerramento {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.data_encerramento ;;
  }
  dimension_group: data_hora {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.data_hora ;;
  }
  dimension: estado_operacional {
    type: string
    sql: ${TABLE}.estado_operacional ;;
  }
  dimension: n_nota {
    type: string
    sql: ${TABLE}.n_nota ;;
  }
  measure: count {
    type: count
  }
}
