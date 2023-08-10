view: zpmtb_npt {
  sql_table_name: `tbg-cloud-dev.SAP_LOG.ZPMTB_NPT` ;;

  dimension: empac_atual {
    type: string
    description: "Empacotamento Atual"
    sql: ${TABLE}.EMPAC_ATUAL ;;
  }
  dimension: empac_previsto {
    type: string
    description: "Empacotamento Previsto"
    sql: ${TABLE}.EMPAC_PREVISTO ;;
  }
  dimension: mandt {
    type: string
    description: "Mandante"
    sql: ${TABLE}.MANDT ;;
  }
  dimension: prog_entrega {
    type: string
    description: "Programação Entrega"
    sql: ${TABLE}.PROG_ENTREGA ;;
  }
  dimension: prog_receb {
    type: string
    description: "Programação Recebimento"
    sql: ${TABLE}.PROG_RECEB ;;
  }
  dimension: qmnum {
    type: string
    description: "Nº da nota"
    sql: ${TABLE}.QMNUM ;;
  }
  measure: count {
    type: count
  }
}
