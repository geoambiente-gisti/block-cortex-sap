view: zpmtb_txt_des {
  sql_table_name: `@{GCP_PROJECT}.@{LOG_DATASET}.ZPMTB_TXT_DES` ;;

  dimension: mandt {
    type: string
    description: "Mandante"
    sql: ${TABLE}.MANDT ;;
  }
  dimension: nrseq {
    type: string
    description: "Sequencial"
    sql: ${TABLE}.NRSEQ ;;
  }
  dimension: qmnum {
    type: string
    description: "Nº da nota"
    sql: ${TABLE}.QMNUM ;;
  }
  dimension: tdline {
    type: string
    description: "Linha de texto"
    sql: ${TABLE}.TDLINE ;;
  }
  measure: count {
    type: count
  }
}
