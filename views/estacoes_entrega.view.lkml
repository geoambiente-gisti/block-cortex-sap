view: estacoes_entrega {
  sql_table_name: `@{GCP_PROJECT}.@{LOG_DATASET}.estacoes_entrega` ;;

  dimension: ee {
    type: string
    sql: ${TABLE}.EE ;;
  }
  dimension: instalacao {
    type: string
    sql: ${TABLE}.instalacao ;;
  }
  measure: count {
    type: count
  }
}
