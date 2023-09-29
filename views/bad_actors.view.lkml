view: bad_actors {
  sql_table_name: `tbg-cloud-dev.SAP_LOG.bad_actors` ;;



  dimension_group: eventstamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year, hour]
    datatype: datetime
    sql: date(concat(concat(${TABLE}.year,'-',${TABLE}.month), '-', '01')) ;;
  }
  dimension: alarm_count {
    type: number
    sql: ${TABLE}.alarm_count ;;
  }
  dimension: full_tagname {
    type: string
    sql: ${TABLE}.full_tagname ;;
  }
  dimension: month {
    type: number
    sql: ${TABLE}.month ;;
  }
  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }
  dimension: total_mes {
    type: number
    sql: ${TABLE}.total_mes ;;
  }
  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }
  measure: count {
    type: count
    drill_fields: [full_tagname, alarm_count]
  }
  measure: sum {
    type: sum
    sql: ${TABLE}.alarm_count ;;
    drill_fields: [full_tagname, alarm_count]
  }
}
