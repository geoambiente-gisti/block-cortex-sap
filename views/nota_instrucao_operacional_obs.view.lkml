view: nota_instrucao_operacional_obs {
  sql_table_name: `@{GCP_PROJECT}.@{LOG_DATASET}.textos_nota_instrucao_operacional_looker` ;;

  dimension: descricao {
    html: <div style="white-space:pre">{{ value }}</div> ;;
    type: string
    sql: ${TABLE}.descricao ;;
  }
  dimension: qmnum {
    type: string
    sql: ${TABLE}.qmnum ;;
  }
  measure: count {
    type: count
  }
}
