view: notification_items {
  sql_table_name: `@{GCP_PROJECT}.@{LOG_DATASET}.NotificationItems` ;;

  dimension: client_mandt {
    type: string
    sql: ${TABLE}.Client_MANDT ;;
  }
  dimension: item_number_fenum {
    type: string
    sql: ${TABLE}.ItemNumber_FENUM ;;
  }
  dimension: notification_item_text_fetxt {
    type: string
    sql: ${TABLE}.NotificationItemText_FETXT ;;
  }
  dimension: notification_number_qmnum {
    type: string
    sql: ${TABLE}.NotificationNumber_QMNUM ;;
  }
  dimension: object_part_catalog_otkat {
    type: string
    sql: ${TABLE}.ObjectPartCatalog_OTKAT ;;
  }
  dimension: object_part_group_code_otgrp {
    type: string
    sql: ${TABLE}.ObjectPartGroupCode_OTGRP ;;
  }
  dimension: object_part_oteil {
    type: string
    sql: ${TABLE}.ObjectPart_OTEIL ;;
  }
  dimension: object_part_version_otver {
    type: string
    sql: ${TABLE}.ObjectPartVersion_OTVER ;;
  }
  dimension: problem_catalog_fekat {
    type: string
    sql: ${TABLE}.ProblemCatalog_FEKAT ;;
  }
  dimension: problem_code_fecod {
    type: string
    sql: ${TABLE}.ProblemCode_FECOD ;;
  }
  dimension: problem_code_version_fever {
    type: string
    sql: ${TABLE}.ProblemCodeVersion_FEVER ;;
  }
  dimension: problem_group_code_fegrp {
    type: string
    sql: ${TABLE}.ProblemGroupCode_FEGRP ;;
  }
  measure: count {
    type: count
  }
}
