view: instalacoes_alarmes {
  sql_table_name: `@{GCP_PROJECT}.@{LOG_DATASET}.instalacoes_alarmes` ;;

  dimension: alarm_tag {
    type: string
    sql: ${TABLE}.alarm_tag ;;
  }
  dimension: instalacao {
    type: string
    sql: ${TABLE}.instalacao ;;
  }
  dimension: sap_local_instalacao {
    type: string
    sql: ${TABLE}.sap_local_instalacao ;;
  }
  measure: count {
    type: count
  }
}
