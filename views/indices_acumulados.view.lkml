view: indices_acumulados {
  sql_table_name: `@{GCP_PROJECT}.@{LOG_DATASET}.indices_acumulados` ;;

  dimension_group: data_ {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.data_ ;;
  }

  dimension: ano_mes {
    type: string
    sql: format_date( '%Y-%m', ${data__date}) ;;
  }
  dimension: mes_ano_escrito {
    label: "Mês Ano"
    type: string
    sql: format_date('%b %Y',${data__date}) ;;
  }
  dimension: instalacao {
    type: string
    sql: ${TABLE}.instalacao ;;
  }
  dimension: parada_nao_programada {
    type: number
    sql: ${TABLE}.parada_nao_programada ;;
  }
  dimension: parada_programada {
    type: number
    sql: ${TABLE}.parada_programada ;;
  }
  dimension: paradas_nao_programada_acumulado_ano {
    type: number
    sql: ${TABLE}.paradas_nao_programada_acumulado_ano ;;
  }
  dimension: paradas_programada_acumulado_ano {
    type: number
    sql: ${TABLE}.paradas_programada_acumulado_ano ;;
  }
  dimension: qtd_area {
    type: number
    sql: ${TABLE}.qtd_area ;;
  }

  dimension: qtd_horas {
    type: number
    sql: ${TABLE}.qtd_horas ;;
  }
  dimension: horas_mes_acumuladas {
    type: number
    sql: ${TABLE}.horas_mes_acumuladas ;;
  }
  dimension: sistema {
    type: string
    sql: ${TABLE}.sistema ;;
  }

  dimension: sum_areas {
    type: number
    sql: ${TABLE}.sum_areas ;;
  }


  measure: count {
    type: count
  }

  measure: sum_parada_programada {
    value_format: "0.00"
    type:  sum
    sql:  ${parada_programada};;
  }

  measure: sum_parada_nao_programada {
    value_format: "0.00"
    type:  sum
    sql:  ${parada_nao_programada};;
  }

  measure: sum_parada_programada_acumulada {
    value_format: "0.00"
    type:  sum
    sql:  ${paradas_programada_acumulado_ano};;
  }

  measure: sum_parada_nao_programada_acumulada {
    value_format: "0.00"
    type:  sum
    sql:  ${paradas_nao_programada_acumulado_ano};;
  }


  measure: confiabilidade_sistema_compressor {
    type: sum
    sql: if (${sistema} = 'Compressor',
    (1 - (${parada_programada} + ${parada_nao_programada}) / (${qtd_area} * ${qtd_horas}))/${qtd_area}, 0
    ) ;;

  }
  measure: confiabilidade_sistema_motorgerador {
    type: sum
    sql: if (${sistema} = 'Motorgerador',
          1 - (${parada_programada} + ${parada_nao_programada}) / (${qtd_area} * ${qtd_horas}), 0
          ) ;;

    }
}
