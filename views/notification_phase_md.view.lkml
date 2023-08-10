view: notification_phase_md {
  sql_table_name: `tbg-cloud-dev.REPORTING.NotificationPhaseMD` ;;

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
