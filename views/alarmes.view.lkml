view: alarmes {
  derived_table: {
    sql:
      select * from `@{GCP_PROJECT}.@{ALARME_DATASET}.alarmes_nao_omitidos`  ;;
  }

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
    timeframes: [raw, time, date, week, month, quarter, year, hour]
    datatype: datetime
    sql: cast(${TABLE}.eventstamp as datetime) ;;
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
  dimension: full_tagname {
    type: string
    sql: ${TABLE}.full_tagname ;;
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
  dimension: event_hour {
    type: string
    sql: TIMESTAMP_SECONDS(CAST(FLOOR(UNIX_SECONDS(timestamp(eventstamp)) / 600) * 600 AS INT64)) ;;
  }

  measure: diff_min {
    type: number
    sql: TIMESTAMP_DIFF(
      cast(concat(extract(date from max(${TABLE}.eventstamp)), ' ', '00:00:00') as timestamp),
      cast(concat(extract(date from min(${TABLE}.eventstamp)), ' ', '23:59:00') as timestamp), minute
    );;
  }

  measure: count {
    type: count
    drill_fields: [alarmid, tagname,  provider, eventstamp_time, tagname, type, area, description]
  }
}
