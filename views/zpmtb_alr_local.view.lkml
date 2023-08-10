view: zpmtb_alr_local {
  sql_table_name: `tbg-cloud-dev.SAP_LOG.ZPMTB_ALR_LOCAL` ;;

  dimension: alarm {
    type: string
    description: "Alarme"
    sql: ${TABLE}.ALARM ;;
  }
  dimension: btpln {
    type: string
    description: "Local de instalação afetado"
    sql: ${TABLE}.BTPLN ;;
  }
  dimension: desal {
    type: string
    description: "Descrição do Alarme"
    sql: ${TABLE}.DESAL ;;
  }
  dimension: grpal {
    type: string
    description: "Grupo de alarmes"
    sql: ${TABLE}.GRPAL ;;
  }
  dimension: mandt {
    type: string
    description: "Mandante"
    sql: ${TABLE}.MANDT ;;
  }
  dimension: tplnr {
    type: string
    description: "Local de instalação"
    sql: ${TABLE}.TPLNR ;;
  }
  measure: count {
    type: count
  }
}
