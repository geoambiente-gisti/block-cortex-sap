view: zpmtb_no_aberta {
  sql_table_name: `tbg-cloud-dev.SAP_LOG.ZPMTB_NO_ABERTA` ;;

  dimension: ausvn {
    type: string
    description: "Início da avaria (data)"
    sql: ${TABLE}.AUSVN ;;
  }
  dimension: auswk {
    type: string
    description: "Consequência para o funcionamento"
    sql: ${TABLE}.AUSWK ;;
  }
  dimension: auztv {
    type: string
    description: "Início da avaria (hora)"
    sql: ${TABLE}.AUZTV ;;
  }
  dimension: mandt {
    type: string
    description: "Mandante"
    sql: ${TABLE}.MANDT ;;
  }
  dimension: qmcod {
    type: string
    description: "Codificação"
    sql: ${TABLE}.QMCOD ;;
  }
  dimension: qmnum {
    type: string
    description: "Nº da nota"
    sql: ${TABLE}.QMNUM ;;
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
