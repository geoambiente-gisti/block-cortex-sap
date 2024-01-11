view: zpm_falha {
  sql_table_name: `@{GCP_PROJECT}.@{LOG_DATASET}.ZPM_FALHA` ;;

  dimension: descricao {
    type: string
    description: "Descrição de Falha"
    sql: ${TABLE}.DESCRICAO ;;
  }
  dimension: falha {
    type: string
    description: "Código de Falha"
    sql: ${TABLE}.FALHA ;;
  }
  dimension: mandt {
    type: string
    description: "Mandante"
    sql: ${TABLE}.MANDT ;;
  }
  dimension: tp_falha {
    type: string
    description: "Tipo de Falha"
    sql: ${TABLE}.TP_FALHA ;;
  }
  measure: count {
    type: count
  }
}
