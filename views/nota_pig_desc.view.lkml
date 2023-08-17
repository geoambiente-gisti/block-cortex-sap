view: nota_pig_desc {
  sql_table_name: `tbg-cloud-dev.SAP_LOG.nota_pig_desc` ;;

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
