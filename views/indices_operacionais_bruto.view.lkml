view: indices_operacionais_bruto {
  sql_table_name: `tbg-cloud-dev.SAP_LOG.indices_operacionais_bruto` ;;

  dimension: estacao {
    type: string
    sql: ${TABLE}.estacao ;;
  }
  dimension: hora_mes {
    type: number
    sql: ${TABLE}.qtd_horas ;;
  }
  dimension: local_instalacao {
    type: string
    sql: ${TABLE}.instalacao ;;
  }
  dimension_group: data_formada {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: last_day(cast(concat(${TABLE}.ano_mes, '-', '01') as date)) ;;
  }
  dimension: ano_mes {
    type: string
    sql: ${TABLE}.ano_mes ;;
  }
  dimension: parada_nao_programada {
    type: number
    sql: ${TABLE}.parada_nao_programada ;;
  }
  dimension: parada_programada {
    type: number
    sql: ${TABLE}.parada_programada ;;
  }
  dimension: qtd_areas {
    type: number
    sql: ${TABLE}.qtd_area ;;
  }
  dimension: sistema {
    type: string
    sql: ${TABLE}.sistema ;;
  }

  dimension: horas_area {
    type: number
    sql: ${hora_mes} * ${qtd_areas};;
  }

  dimension: availability {
    label: "Disponibilidade"
    type: number
    sql: (1 - (${parada_programada} + ${parada_programada}) / ${horas_area}) * 100 ;;
  }

  dimension: reliability {
    label: "Confiabilidade"
    type: number
    sql: (1 - (${parada_programada}) / ${hora_mes}) * 100 ;;
  }

  measure: count {
    type: count
  }

  measure: mean_availability {
    type: average
    sql:  ${availability};;
  }

  measure: sum_availability {
    type: sum
    sql:  ${availability};;
  }

  measure: mean_reliability {
    type: average
    sql: ${reliability} ;;
  }
}
