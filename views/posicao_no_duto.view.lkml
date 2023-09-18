view: posicao_no_duto {
  sql_table_name: `tbg-cloud-dev.SAP_LOG.posicao_no_duto` ;;

  dimension: codigo_sap {
    type: string
    sql: ${TABLE}.Codigo_SAP ;;
  }
  dimension: codigo_scada {
    type: string
    sql: ${TABLE}.Codigo_SCADA ;;
  }
  dimension: nome_do_ponto_de_entrega {
    type: string
    sql: ${TABLE}.Nome_do_Ponto_de_Entrega ;;
  }
  dimension: posicao_duto {
    type: number
    sql: ${TABLE}.Posi____o_no_duto ;;
  }
  measure: count {
    type: count
  }
}
