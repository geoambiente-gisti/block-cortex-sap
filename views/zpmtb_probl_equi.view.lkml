view: zpmtb_probl_equi {
  sql_table_name: `tbg-cloud-dev.SAP_LOG.ZPMTB_PROBL_EQUI` ;;

  dimension: despr {
    type: string
    description: "Descrição do Problema"
    sql: ${TABLE}.DESPR ;;
  }
  dimension: mandt {
    type: string
    description: "Mandante"
    sql: ${TABLE}.MANDT ;;
  }
  dimension: tpequ {
    type: string
    description: "Tipo de equipamento"
    sql: ${TABLE}.TPEQU ;;
  }
  measure: count {
    type: count
  }
}
