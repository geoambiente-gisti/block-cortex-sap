view: notification_long_text {
  sql_table_name: `tbg-cloud-dev.REPORTING.NotificationLongText` ;;

  dimension: client_mandt {
    type: string
    sql: ${TABLE}.Client_MANDT ;;
  }
  dimension: language_key_spras {
    type: string
    sql: ${TABLE}.LanguageKey_SPRAS ;;
  }
  dimension: long_text_tdline {
    label: "Observações"
    type: string
    sql: ${TABLE}.LongText_TDLINE ;;
  }
  dimension: notification_number_qmnum {
    type: string
    sql: ${TABLE}.NotificationNumber_QMNUM ;;
  }
  measure: count {
    type: count
  }
}
