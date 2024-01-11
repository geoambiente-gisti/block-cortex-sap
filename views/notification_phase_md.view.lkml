view: notification_phase_md {
  sql_table_name: `@{GCP_PROJECT}.REPORTING.NotificationPhaseMD` ;;

  dimension: language {
    type: string
    sql: ${TABLE}.Language ;;
  }
  dimension: phase {
    type: string
    sql: ${TABLE}.Phase ;;
  }
  dimension: text {
    type: string
    sql: ${TABLE}.Text ;;
  }
  measure: count {
    type: count
  }
}
