view: estacao_nome {
  sql_table_name: `tbg-cloud-dev.SAP_LOG.estacao_nome` ;;

  dimension: codigo_sap {
    type: string
    sql: ${TABLE}.codigo_sap ;;
  }
  dimension: codigo_scada {
    type: string
    sql: ${TABLE}.codigo_scada ;;
  }
  dimension: nome_ponto {
    type: string
    sql: ${TABLE}.nome_ponto ;;
  }

  dimension: nome_estacao {
    type: string
    sql: concat(${TABLE}.codigo_sap, ' ',${TABLE}.nome_ponto) ;;
  }
  measure: count {
    type: count
  }
}
