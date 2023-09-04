view: estacoes_entrega {
  sql_table_name: `tbg-cloud-dev.SAP_LOG.estacoes_entrega` ;;

  dimension: ee {
    type: string
    sql: ${TABLE}.EE ;;
  }
  dimension: instalacao {
    type: string
    sql: ${TABLE}.instalacao ;;
  }
  measure: count {
    type: count
  }
}
