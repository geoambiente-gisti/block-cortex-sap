view: situacao_operacional_locals {
  sql_table_name: `tbg-cloud-dev.SAP_LOG.situacao_operacional_locals` ;;

  dimension: area_sistema {
    type: string
    sql:concat(${TABLE}.area_sistema, ' - ', ${TABLE}.descricao) ;;
  }

  dimension: instalacao {
    type: string
    sql: ${TABLE}.instalacao ;;
  }
  dimension: instalacao_descricao {
    type: string
    sql: ${TABLE}.instalacao_descricao ;;
  }
  dimension: tipo_estacao {
    type: string
    sql: ${TABLE}.tipo_estacao ;;
  }

  measure: em_operacao {
    type: string

    sql: 'true' ;;
    html: {% if value == 'true' %}
         <p><img src="https://findicons.com/files/icons/573/must_have/48/check.png" alt="" height="20" width="20"></p>
      {% else %}
        <p><img src="https://findicons.com/files/icons/719/crystal_clear_actions/64/cancel.png" alt="" height="20" width="20"></p>
      {% endif %}
      ;;
  }
  measure: em_reserva {
    type: string
    sql: 'false' ;;
    html: {% if value == 'true' %}
         <p><img src="https://findicons.com/files/icons/573/must_have/48/check.png" alt="" height="20" width="20"></p>
      {% else %}
        <p><img src="https://findicons.com/files/icons/719/crystal_clear_actions/64/cancel.png" alt="" height="20" width="20"></p>
      {% endif %} ;;
  }
  measure: em_parada_programada {
    type: string
    sql: 'false' ;;
    html: {% if value == 'true' %}
         <p><img src="https://findicons.com/files/icons/573/must_have/48/check.png" alt="" height="20" width="20"></p>
      {% else %}
        <p><img src="https://findicons.com/files/icons/719/crystal_clear_actions/64/cancel.png" alt="" height="20" width="20"></p>
      {% endif %} ;;
  }

  dimension: descricao {
    type: string
    sql: ${TABLE}.descricao ;;
  }
  measure: count {
    type: count
  }
}
