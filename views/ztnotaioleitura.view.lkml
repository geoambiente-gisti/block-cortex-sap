view: ztnotaioleitura {
  sql_table_name: `@{GCP_PROJECT}.@{LOG_DATASET}.ZTNOTAIOLEITURA` ;;

  dimension: dt_leit {
    type: string
    description: "Data da nota"
    sql: ${TABLE}.DT_LEIT ;;
  }
  dimension: hr_leit {
    type: string
    description: "Hora da nota"
    sql: ${TABLE}.HR_LEIT ;;
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
