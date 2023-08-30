view: alarmes {
  sql_table_name: `tbg-cloud-dev.SAP_LOG.alarmes` ;;

  dimension: alarmid {
    type: number
    value_format_name: id
    sql: ${TABLE}.alarmid ;;
  }
  dimension: alarmstate {
    type: string
    sql: ${TABLE}.alarmstate ;;
  }
  dimension: area {
    type: string
    sql: ${TABLE}.area ;;
  }
  dimension: tipo_area {
    type: string
    sql: SUBSTR( REPLACE (${TABLE}.area, 'CITY_', ''), INSTR( REPLACE (${TABLE}.area, 'CITY_', ''), "_") + 1) ;;
  }
  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }
  dimension: checkvalue {
    type: string
    sql: ${TABLE}.checkvalue ;;
  }
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }
  dimension: domainname {
    type: string
    sql: ${TABLE}.domainname ;;
  }
  dimension_group: eventstamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.eventstamp ;;
  }
  dimension_group: eventstamputc {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.eventstamputc ;;
  }
  dimension: millisec {
    type: number
    sql: ${TABLE}.millisec ;;
  }
  dimension: operator {
    type: string
    sql: ${TABLE}.operator ;;
  }
  dimension: operatornode {
    type: string
    sql: ${TABLE}.operatornode ;;
  }
  dimension: priority {
    type: number
    sql: ${TABLE}.Priority ;;
  }
  dimension: provider {
    type: string
    sql: ${TABLE}.provider ;;
  }
  dimension: tagname {
    type: string
    sql: ${TABLE}.tagname ;;
  }
  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
  dimension: unackduration {
    type: string
    sql: ${TABLE}.unackduration ;;
  }
  dimension: user1 {
    type: number
    sql: ${TABLE}.user1 ;;
  }
  dimension: user2 {
    type: number
    sql: ${TABLE}.user2 ;;
  }
  dimension: user3 {
    type: string
    sql: ${TABLE}.user3 ;;
  }
  dimension: userfullname {
    type: string
    sql: ${TABLE}.userfullname ;;
  }
  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
  measure: count {
    type: count
    drill_fields: [alarmid, tagname, alarmstate, area]
  }
}
