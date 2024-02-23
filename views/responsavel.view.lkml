view: responsavel {
  sql_table_name: `@{GCP_PROJECT}.@{LOG_DATASET}.responsavel` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }
  dimension: login_sap {
    type: string
    sql: ${TABLE}.login_sap ;;
  }
  dimension: nome {
    type: string
    sql: ${TABLE}.nome ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
