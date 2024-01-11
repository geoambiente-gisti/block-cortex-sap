view: zpmtb_indexgroup {
  sql_table_name: `@{GCP_PROJECT}.@{LOG_DATASET}.ZPMTB_INDEXGROUP` ;;

  dimension: codagrup {
    type: string
    description: "Código do agrupamento de índice operacional"
    sql: ${TABLE}.CODAGRUP ;;
  }
  dimension: descragrup {
    type: string
    description: "Denominação do loc.instalação"
    sql: ${TABLE}.DESCRAGRUP ;;
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
