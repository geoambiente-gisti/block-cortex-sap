view: contagem_manutencao {
  sql_table_name: `tbg-cloud-dev.SAP_LOG.contagem_manutencao` ;;

  dimension: pk {
    type: string
    primary_key: yes
    sql: concat(${instalacao},${mes}, ${ano}) ;;
  }

  dimension: ano {
    type: string
    sql: ${TABLE}.ano ;;
  }
  dimension: instalacao {
    type: string
    sql: ${TABLE}.instalacao ;;
  }
  dimension: mes {
    type: string
    sql: replace(${TABLE}.mes, '0', '') ;;
  }
  dimension: total_ano {
    type: number
    sql: ${TABLE}.total_ano ;;
  }
  dimension: total_mes {
    type: number
    sql: ${TABLE}.total_mes ;;
  }

  dimension: estacao_compressao_mes {
    type: number
    sql: ${TABLE}.estacao_compressao_mes ;;
  }

  dimension: ponto_entrega_mes {
    type: number
    sql: ${TABLE}.ponto_entrega_mes ;;
  }

  dimension: soma_ano {
    type: number
    sql: ${TABLE}.soma_ano ;;
  }
  dimension: estacao_compressao {
    type: number
    sql: ${TABLE}.estacao_compressao ;;
  }
  dimension: ponto_entrega {
    type: number
    sql: ${TABLE}.ponto_entrega ;;
  }

  measure: count {
    type: count
  }

  measure: sum_total_mes {
    type: sum
    # sql_distinct_key: ${mes} ;;
    sql: ${total_mes} ;;
  }

  measure: sum_ponto_entrega_mes {
    type: sum
    # sql_distinct_key: ${mes} ;;
    sql: ${ponto_entrega_mes} ;;
  }

  measure: sum_estacao_compressao_mes {
    type: sum
    # sql_distinct_key: ${mes} ;;
    sql: ${estacao_compressao_mes} ;;
  }

  measure: sum_ponto_entrega {
    type: sum
    # sql_distinct_key: ${mes} ;;
    sql: ${ponto_entrega} ;;
  }
  measure: sum_estacao_compressao {
    type: sum
    # sql_distinct_key: ${mes} ;;
    sql: ${estacao_compressao} ;;
  }
  measure: max_total_ano {
    type: max
    sql: ${total_ano} ;;
  }

}
