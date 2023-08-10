view: zpm_rela_lan_rec {
  sql_table_name: `tbg-cloud-dev.SAP_LOG.ZPM_RELA_LAN_REC` ;;

  dimension: loc_lancamento {
    type: string
    description: "Valor da característica"
    sql: ${TABLE}.LOC_LANCAMENTO ;;
  }
  dimension: loc_recebimento {
    type: string
    description: "Valor da característica"
    sql: ${TABLE}.LOC_RECEBIMENTO ;;
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
