view: indices_individuais {
  sql_table_name: `@{GCP_PROJECT}.@{LOG_DATASET}.indices_individuais` ;;

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
    sql: last_day(cast(concat(${TABLE}.formatted_month, '-', '01') as date)) ;;
  }
  dimension: mes_ano_escrito {
    label: "Mês Ano"
    type: string
    sql: format_date('%b %Y',${data_formada_date}) ;;
  }

  dimension: descricao {
    type: string
    sql: ${TABLE}.descricao ;;
  }
  dimension: formatted_month {
    type: string
    sql: ${TABLE}.formatted_month ;;
  }

  dimension: primary_key {
    primary_key: yes
    label: "Identificador"
    sql: concat(${instalacao}, ' ', ${estacao}, '', ${sistema}) ;;
  }

  dimension: local_completo {
    label: "Local Instalacao"
    sql: concat(${instalacao}, ' ', ${estacao}) ;;
  }

  dimension: area_sistema_completo {

    label: "Área/Sistema"
    sql: concat(${area_sistema}, ' ', ${descricao}) ;;
  }

  dimension: estacao {
    type: string
    sql: ${TABLE}.estacao ;;
  }
  dimension: area_sistema {

    type: string
    sql: ${TABLE}.area_sistema ;;
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
  dimension: qtd_horas {
    type: number
    sql: ${TABLE}.qtd_horas ;;
  }
  dimension: sistema {
    type: string
    sql: ${TABLE}.sistema ;;
  }
  measure: count {
    type: count
  }

  measure: sum_horas_parada_nao_programada {
    type: sum
    sql_distinct_key: ${instalacao} ;;
    sql: ${parada_nao_programada} ;;
  }

  measure: sum_horas_parada_programada {
    type: sum
    sql_distinct_key: ${instalacao} ;;
    sql: ${parada_programada} ;;
  }


  dimension: disponibilidade_dim {
    value_format: "0.00"
    sql: (1 - (${parada_nao_programada} + ${parada_nao_programada}) / (${qtd_horas} * 1)) * 100 ;;
  }

  measure: disponibilidade {
    type: sum_distinct
    sql_distinct_key: ${area_sistema} ;;
    sql: 1 - (${parada_nao_programada} + ${parada_programada}) / (1 * ${qtd_horas}) ;;
    # html: {% if value <= 100 %}
    # <p style="">{{value}}</p>
    # {% else %}
    # <p style="font-size:100%; text-align:center"></p>
    # {% endif %}
    # ;;
  }

  dimension: confiabilidade_dim {
    value_format: "0.00"
    sql: (1 - (${parada_nao_programada}) / (${qtd_horas} * 1)) * 100 ;;
  }

  measure: confiabilidade {
    type: sum_distinct
    sql_distinct_key: ${area_sistema} ;;
    sql: 1 - (${parada_nao_programada}) / (1 * ${qtd_horas}) ;;
    # html: {% if value <= 100 %}
    # <p style="">{{value}}</p>
    # {% else %}
    # <p style="font-size:100%; text-align:center"></p>
    # {% endif %}
    # ;;
  }
}
