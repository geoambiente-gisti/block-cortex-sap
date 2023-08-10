view: zpm_classe_local {
  sql_table_name: `tbg-cloud-dev.SAP_LOG.ZPM_CLASSE_LOCAL` ;;

  dimension: cls_local {
    type: string
    description: "Classificação do local de instalação"
    sql: ${TABLE}.CLS_LOCAL ;;
  }
  dimension: clstxt {
    type: string
    description: "Texto de comprimento 40"
    sql: ${TABLE}.CLSTXT ;;
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
