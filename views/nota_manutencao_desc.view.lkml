view: nota_manutencao_desc {
  sql_table_name: `@{GCP_PROJECT}.@{LOG_DATASET}.nota_manutencao_desc_table` ;;

  dimension: descricao {
    html: <div style="white-space:pre">{{ value }}</div> ;;
    type: string
    sql: ${TABLE}.descricao ;;
  }
  dimension: qmnum {
    label: "Nº da Nota"
    type: string
    sql: ${TABLE}.qmnum ;;
  }
  measure: count {
    type: count
  }
}
