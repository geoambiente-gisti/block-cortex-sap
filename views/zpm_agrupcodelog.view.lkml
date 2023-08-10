view: zpm_agrupcodelog {
  sql_table_name: `tbg-cloud-dev.SAP_LOG.ZPM_AGRUPCODELOG` ;;

  dimension: code {
    type: string
    description: "Código"
    sql: ${TABLE}.CODE ;;
  }
  dimension: code_agrup {
    type: string
    description: "Código"
    sql: ${TABLE}.CODE_AGRUP ;;
  }
  dimension: codegruppe {
    type: string
    description: "Grupo de códigos"
    sql: ${TABLE}.CODEGRUPPE ;;
  }
  dimension: katalogart {
    type: string
    description: "Catálogo"
    sql: ${TABLE}.KATALOGART ;;
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
