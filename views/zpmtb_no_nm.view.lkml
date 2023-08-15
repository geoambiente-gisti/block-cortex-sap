view: zpmtb_no_nm {
  sql_table_name: `tbg-cloud-dev.SAP_LOG.ZPMTB_NO_NM` ;;

  dimension: mandt {
    type: string
    description: "Mandante"
    sql: ${TABLE}.MANDT ;;
  }
  dimension: num_log_nm {
    type: string
    label: "Numero LOG da Nota de Manutenção"
    description: "Numero LOG da Nota de Manutenção"
    sql: ${TABLE}.NUM_LOG_NM ;;
  }
  dimension: num_log_no {
    type: string
    label: "Numero LOG da Nota de Operação"
    description: "Numero LOG da Nota de Operação"
    sql: ${TABLE}.NUM_LOG_NO ;;
  }
  measure: count {
    type: count
  }
}
