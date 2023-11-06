view: situacao_operacional_locals {
  sql_table_name: `@{GCP_PROJECT}.@{LOG_DATASET}.situacao_operacional_locals` ;;

  dimension: area_sistema {
    type: string
    sql:${TABLE}.area_sistema ;;
  }

  dimension: area_sistema_concat {
    label: "Descrição"
    type: string
    sql:concat(${TABLE}.area_sistema, '  ', ${TABLE}.descricao) ;;
  }

  dimension: estacao {
    type: string
    sql: ${TABLE}.estacao ;;
  }

  dimension: nivel {
    type: string
    sql: ${TABLE}.nivel ;;
  }

  dimension: instalacao {
    type: string
    sql: ${TABLE}.instalacao ;;
  }

  dimension: instalacao_concat {
    label: "Área/Sistema"
    type: string
    sql: CONCAT(${TABLE}.instalacao, '  ', ${TABLE}.estacao) ;;
  }

  dimension: instalacao_descricao {
    type: string
    sql: ${TABLE}.instalacao_descricao ;;
  }

  dimension: nome_estacao {
    type: string
    sql: ${TABLE}.nome_estacao ;;
  }

  dimension: tipo_estacao {
    type: string
    sql: ${TABLE}.tipo_estacao ;;
  }

  dimension: estado_operacional {
    type: string
    sql: ${TABLE}.estado_operacional ;;
  }

  dimension: em_operacao_g {
    type: string
    sql: ${TABLE}.em_operacao ;;
  }


  dimension: em_parada_nao_programada_g {
    type: string
    sql: ${TABLE}.parada_nao_programada ;;
  }


  dimension: em_parada_programada_g {
    type: string
    sql: ${TABLE}.parada_programada ;;
  }


  measure: em_operacao_num {
    type: sum
    sql: if(${TABLE}.em_operacao = 'Em Operação', 1, 0);;

  }
  measure: em_parada_nao_programada_num {
    type: sum
    sql: if(${TABLE}.parada_nao_programada = 'Parada não Programada' , 1, 0);;

  }
  measure: em_parada_programada_num {
    type: sum
    sql: if(${TABLE}.parada_programada = 'Parada programada', 1, 0);;
  }


  measure: em_operacao {
    type: sum
    sql: if(${TABLE}.em_operacao = 'Em Operação', 1, 0);;
    html: {% if value > 0 %}
        <p style="color: black; background-color: #7CB342; font-size:100%; text-align:center"><img src="https://storage.cloud.google.com/looker_icons_tbg/checked.png" alt="" height="20" width="20"></p>

      {% else %}
         <p style="font-size:100%; text-align:center"><img src="https://storage.cloud.google.com/looker_icons_tbg/uncheck_box.png" alt="" height="20" width="20"></p>
      {% endif %}
      ;;
  }
  measure: em_parada_nao_programada {
    type: sum
    sql: if(${TABLE}.parada_nao_programada = 'Parada não Programada' , 1, 0);;
    html: {% if value > 0 %}
        <p style="color: black; background-color: #EA4335; font-size:100%; text-align:center"><img src="https://storage.cloud.google.com/looker_icons_tbg/checked.png" alt="" height="20" width="20"></p>
      {% else %}
        <p style="font-size:100%; text-align:center"><img src="https://storage.cloud.google.com/looker_icons_tbg/uncheck_box.png" alt="" height="20" width="20"></p>
      {% endif %}
      ;;
  }
  measure: em_parada_programada {
    type: sum
    sql: if(${TABLE}.parada_programada = 'Parada programada', 1, 0);;
    html: {% if value > 0 %}
        <p style="color: black; background-color: #F9AB00; font-size:100%; text-align:center"><img src="https://storage.cloud.google.com/looker_icons_tbg/checked.png" alt="" height="20" width="20"></p>
      {% else %}
        <p style="font-size:100%; text-align:center"><img src="https://storage.cloud.google.com/looker_icons_tbg/uncheck_box.png" alt="" height="20" width="20"></p>
      {% endif %}
      ;;
  }

  dimension: descricao {
    type: string
    sql: ${TABLE}.descricao ;;
  }
  measure: count {
    type: count
  }
}
