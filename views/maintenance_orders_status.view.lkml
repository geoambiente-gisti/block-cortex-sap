view: maintenance_orders_status {
  sql_table_name: `@{GCP_PROJECT}.REPORTING.MaintenanceOrdersStatus` ;;

  dimension: client_mandt {
    type: string
    sql: ${TABLE}.Client_MANDT ;;
  }
  dimension: language_key_spras {
    type: string
    sql: ${TABLE}.LanguageKey_SPRAS ;;
  }
  dimension: order_number_aufnr {
    type: string
    sql: ${TABLE}.OrderNumber_AUFNR ;;
  }
  dimension: status_long_text_txt30 {
    type: string
    sql: ${TABLE}.StatusLongText_TXT30 ;;
  }
  dimension: status_short_text_txt04 {
    type: string
    sql: ${TABLE}.StatusShortText_TXT04 ;;
  }
  dimension: system_status_stat {
    type: string
    sql: ${TABLE}.SystemStatus_STAT ;;
  }
  dimension: type {
    type: string
    sql: ${TABLE}.Type ;;
  }
  measure: count {
    type: count
  }
}
