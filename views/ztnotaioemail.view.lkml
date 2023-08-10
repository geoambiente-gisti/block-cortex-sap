view: ztnotaioemail {
  sql_table_name: `tbg-cloud-dev.SAP_LOG.ZTNOTAIOEMAIL` ;;

  dimension: email {
    type: string
    description: "Dados complementares"
    sql: ${TABLE}.EMAIL ;;
  }
  dimension: funcao {
    type: string
    description: "Função do empregado"
    sql: ${TABLE}.FUNCAO ;;
  }
  dimension: mandt {
    type: string
    description: "Mandante"
    sql: ${TABLE}.MANDT ;;
  }
  dimension: usuario {
    type: string
    description: "Nome do autor da nota"
    sql: ${TABLE}.USUARIO ;;
  }
  measure: count {
    type: count
  }
}
