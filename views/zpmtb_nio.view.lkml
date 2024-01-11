view: zpmtb_nio {
  sql_table_name: `@{GCP_PROJECT}.@{LOG_DATASET}.ZPMTB_NIO` ;;

  dimension: mandt {
    type: string
    description: "Mandante"
    sql: ${TABLE}.MANDT ;;
  }
  dimension: qmnum {
    type: string
    description: "Nº da nota"
    sql: ${TABLE}.QMNUM ;;
  }
  dimension: status {
    type: string
    description: "Status da Nota"
    sql: ${TABLE}.STATUS ;;
  }
  dimension: tipo {
    type: string
    description: "Tipo"
    sql: ${TABLE}.TIPO ;;
  }
  dimension: titulo {
    type: string
    description: "Título"
    sql: ${TABLE}.TITULO ;;
  }
  measure: count {
    type: count
  }
}
