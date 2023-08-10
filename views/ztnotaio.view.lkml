view: ztnotaio {
  sql_table_name: `tbg-cloud-dev.SAP_LOG.ZTNOTAIO` ;;

  dimension: data {
    type: string
    description: "Data da nota"
    sql: ${TABLE}.DATA ;;
  }
  dimension: hora {
    type: string
    description: "Hora da nota"
    sql: ${TABLE}.HORA ;;
  }
  dimension: mandt {
    type: string
    description: "Mandante"
    sql: ${TABLE}.MANDT ;;
  }
  dimension: nota {
    type: string
    description: "Nº da nota"
    sql: ${TABLE}.NOTA ;;
  }
  dimension: usuario {
    type: string
    description: "Nome do autor da nota"
    sql: ${TABLE}.USUARIO ;;
  }
  measure: count {
    type: count
  }
}
