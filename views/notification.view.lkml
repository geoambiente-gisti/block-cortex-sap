view: notification {
  sql_table_name: `tbg-cloud-dev.REPORTING.Notification` ;;

  dimension: client_mandt {
    type: string
    sql: ${TABLE}.Client_MANDT ;;
  }
  dimension: company_code_bukrs {
    type: string
    sql: ${TABLE}.CompanyCode_BUKRS ;;
  }
  dimension_group: create_date_erdat {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CreateDate_ERDAT ;;
  }
  dimension: equipment_number_equnr {
    type: string
    sql: ${TABLE}.EquipmentNumber_EQUNR ;;
  }
  dimension: functional_location_tplnr {
    type: string
    sql: ${TABLE}.FunctionalLocation_TPLNR ;;
  }
  dimension: location_technical_object_iloan {
    type: string
    sql: ${TABLE}.LocationTechnicalObject_ILOAN ;;
  }
  dimension: maintenance_planning_plant_iwerk {
    type: string
    sql: ${TABLE}.MaintenancePlanningPlant_IWERK ;;
  }
  dimension: notification_description_qmtxy {
    type: string
    sql: ${TABLE}.NotificationDescription_QMTXY ;;
  }
  dimension: notification_number_qmnum {
    type: string
    sql: ${TABLE}.NotificationNumber_QMNUM ;;
  }
  dimension: notification_type_qmart {
    type: string
    sql: ${TABLE}.NotificationType_QMART ;;
  }
  dimension: object_number_objnr {
    type: string
    sql: ${TABLE}.ObjectNumber_OBJNR ;;
  }
  dimension_group: order_basic_finish_date_gltrp {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.OrderBasicFinishDate_GLTRP ;;
  }
  dimension_group: order_basic_start_date_gstrp {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.OrderBasicStartDate_GSTRP ;;
  }
  dimension: order_number_aufnr {
    type: string
    sql: ${TABLE}.OrderNumber_AUFNR ;;
  }
  dimension: processing_phase_phase {
    type: string
    sql: ${TABLE}.ProcessingPhase_PHASE ;;
  }
  measure: count {
    type: count
  }

}
