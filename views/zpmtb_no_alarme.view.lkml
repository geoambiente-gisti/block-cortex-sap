view: zpmtb_no_alarme {
  sql_table_name: `@{GCP_PROJECT}.@{LOG_DATASET}.ZPMTB_NO_ALARME` ;;

  dimension: alarm {
    type: string
    description: "Alarme"
    sql: ${TABLE}.ALARM ;;
  }
  dimension: desal {
    type: string
    description: "Descrição do Alarme"
    sql: ${TABLE}.DESAL ;;
  }
  dimension: grpal {
    type: string
    description: "Grupo de alarmes"
    sql: ${TABLE}.GRPAL ;;
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
  dimension: tplnr {
    type: string
    description: "Local de instalação"
    sql: ${TABLE}.TPLNR ;;
  }
  measure: count {
    type: count
  }
}
