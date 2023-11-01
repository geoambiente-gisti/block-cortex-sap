view: maintenance_orders {
  sql_table_name: `@{GCP_PROJECT}.REPORTING.MaintenanceOrders` ;;

  dimension_group: actual_finish_date_getri {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ActualFinishDate_GETRI ;;
  }
  dimension_group: actual_release_date_gltri {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ActualReleaseDate_GLTRI ;;
  }
  dimension_group: actual_start_date_gstrs {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ActualStartDate_GSTRS ;;
  }
  dimension_group: basic_finish_date_gltrp {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.BasicFinishDate_GLTRP ;;
  }
  dimension: business_area_gsber {
    type: string
    sql: ${TABLE}.BusinessArea_GSBER ;;
  }
  dimension_group: change_date_for_order_master_aedat {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ChangeDateForOrderMaster_AEDAT ;;
  }
  dimension: client_mandt {
    type: string
    sql: ${TABLE}.Client_MANDT ;;
  }
  dimension: company_code_bukrs {
    type: string
    sql: ${TABLE}.CompanyCode_BUKRS ;;
  }
  dimension_group: confirmed_order_finish_date_gstri {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ConfirmedOrderFinishDate_GSTRI ;;
  }
  dimension: controlling_area_kokrs {
    type: string
    sql: ${TABLE}.ControllingArea_KOKRS ;;
  }
  dimension: cost_center_kostl {
    type: string
    sql: ${TABLE}.CostCenter_KOSTL ;;
  }
  dimension_group: created_on_erdat {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CreatedOn_ERDAT ;;
  }
  dimension: description_ktext {
    type: string
    sql: ${TABLE}.Description_KTEXT ;;
  }
  dimension: entered_by_ernam {
    type: string
    sql: ${TABLE}.EnteredBy_ERNAM ;;
  }
  dimension: equipment_number_equnr {
    type: string
    sql: ${TABLE}.EquipmentNumber_EQUNR ;;
  }
  dimension: last_changed_by_aenam {
    type: string
    sql: ${TABLE}.LastChangedBy_AENAM ;;
  }
  dimension: location_technical_object_iloan {
    type: string
    sql: ${TABLE}.LocationTechnicalObject_ILOAN ;;
  }
  dimension: notification_number_qmnum {
    type: string
    sql: ${TABLE}.NotificationNumber_QMNUM ;;
  }
  dimension: object_number_objnr {
    type: string
    sql: ${TABLE}.ObjectNumber_OBJNR ;;
  }
  dimension: order_category_autyp {
    type: string
    sql: ${TABLE}.OrderCategory_AUTYP ;;
  }
  dimension: order_number_aufnr {
    type: string
    sql: ${TABLE}.OrderNumber_AUFNR ;;
  }
  dimension: order_type_auart {
    type: string
    sql: ${TABLE}.OrderType_AUART ;;
  }
  dimension_group: planned_release_date_ftrmi {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.PlannedReleaseDate_FTRMI ;;
  }
  dimension: planning_plant_iwerk {
    type: string
    sql: ${TABLE}.PlanningPlant_IWERK ;;
  }
  dimension: plant_werks {
    type: string
    sql: ${TABLE}.Plant_WERKS ;;
  }
  dimension: processing_phase_iphas {
    type: string
    sql: ${TABLE}.ProcessingPhase_IPHAS ;;
  }
  dimension_group: scheduled_finish_ftrms {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ScheduledFinish_FTRMS ;;
  }
  dimension_group: scheduled_release_date_gstrp {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ScheduledReleaseDate_GSTRP ;;
  }
  dimension_group: scheduled_start_gltrs {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.ScheduledStart_GLTRS ;;
  }
  dimension: system_condition_anlzu {
    type: string
    sql: ${TABLE}.SystemCondition_ANLZU ;;
  }
  dimension: work_approval_wapnr {
    type: string
    sql: ${TABLE}.WorkApproval_WAPNR ;;
  }
  measure: count {
    type: count
  }
}
