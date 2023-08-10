view: zpm_estado_oper {
  sql_table_name: `tbg-cloud-dev.SAP_LOG.ZPM_ESTADO_OPER` ;;

  dimension: auswk {
    type: string
    description: "Consequência para o funcionamento"
    sql: ${TABLE}.AUSWK ;;
  }
  dimension: emoper {
    type: string
    description: "Estado operacional \"Em Operação\"?"
    sql: ${TABLE}.EMOPER ;;
  }
  dimension: mandt {
    type: string
    description: "Mandante"
    sql: ${TABLE}.MANDT ;;
  }
  measure: count {
    type: count
  }
}
