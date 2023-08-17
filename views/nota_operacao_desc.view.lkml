view: nota_operacao_desc {
  sql_table_name: `tbg-cloud-dev.SAP_LOG.nota_operacao_desc` ;;

  dimension: descricao {
    type: string
    sql: ${TABLE}.descricao ;;
  }
  dimension: qmnum {
    type: string
    sql: ${TABLE}.qmnum ;;
  }
  measure: count {
    type: count
  }
}
