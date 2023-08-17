view: nota_instrucao_operacional_obs {
  sql_table_name: `tbg-cloud-dev.SAP_LOG.nota_instrucao_operacional_obs` ;;

  dimension: descricao {
    html: <div style="white-space:pre">{{ value }}</div> ;;
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
