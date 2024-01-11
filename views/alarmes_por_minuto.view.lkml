view: alarmes_por_minuto {
  derived_table: {
    sql:
      with supreesed as(select
        FORMAT_DATETIME("%Y-%m-%d %H:%M", eventstamp) as event_time,
        count(1) as qtd
        from `@{GCP_PROJECT}.@{LOG_DATASET}.alarmes`
        where alarmstate = 'UNACK_ALM'
        group by 1
        having count(1) > 300
        order by 1 desc)
      select * from `@{GCP_PROJECT}.@{LOG_DATASET}.alarmes` a join supreesed s on FORMAT_DATETIME("%Y-%m-%d %H:%M", a.eventstamp) = s.event_time ;;
  }

  dimension_group: eventstamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.event_time ;;
  }

  dimension: qtd {
    type: number
    sql: ${TABLE}.qtd ;;
  }

}
