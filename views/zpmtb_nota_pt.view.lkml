view: zpmtb_nota_pt {
  sql_table_name: `@{GCP_PROJECT}.@{LOG_DATASET}.ZPMTB_NOTA_PT` ;;

  dimension: data {
    type: string
    description: "Data de início desejada"
    sql: ${TABLE}.DATA ;;
  }
  dimension: hora {
    type: string
    description: "Hora de início desejada"
    sql: ${TABLE}.HORA ;;
  }
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
  dimension: regional {
    type: string
    description: "Centro de manutenção"
    sql: ${TABLE}.REGIONAL ;;
  }
  dimension: status {
    type: string
    description: "Status individual de um objeto"
    sql: ${TABLE}.STATUS ;;
  }
  measure: count {
    type: count
  }
}
