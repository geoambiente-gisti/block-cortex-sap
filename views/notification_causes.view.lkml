view: notification_causes {
  sql_table_name: `tbg-cloud-dev.REPORTING.NotificationCauses` ;;

  dimension: cause_catalog_urkat {
    type: string
    sql: ${TABLE}.CauseCatalog_URKAT ;;
  }
  dimension: cause_code_urcode {
    type: string
    sql: ${TABLE}.CauseCode_URCODE ;;
  }
  dimension: cause_group_code_otgrp {
    type: string
    sql: ${TABLE}.CauseGroupCode_OTGRP ;;
  }
  dimension: cause_text_urtxt {
    type: string
    sql: ${TABLE}.CauseText_URTXT ;;
  }
  dimension: cause_version_urver {
    type: string
    sql: ${TABLE}.CauseVersion_URVER ;;
  }
  dimension: client_mandt {
    type: string
    sql: ${TABLE}.Client_MANDT ;;
  }
  dimension_group: create_date_erdat {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CreateDate_ERDAT ;;
  }
  dimension: item_number_fenum {
    type: string
    sql: ${TABLE}.ItemNumber_FENUM ;;
  }
  dimension: notification_number_qmnum {
    type: string
    sql: ${TABLE}.NotificationNumber_QMNUM ;;
  }
  dimension: sequential_number_cause_urnum {
    type: string
    sql: ${TABLE}.SequentialNumberCause_URNUM ;;
  }
  measure: count {
    type: count
  }
}
