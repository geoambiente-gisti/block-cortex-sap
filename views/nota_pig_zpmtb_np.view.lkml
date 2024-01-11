view: nota_pig_zpmtb_np {
  sql_table_name: `@{GCP_PROJECT}.@{LOG_DATASET}.nota_pig_np` ;;

  dimension: data_prevista {
    type: string
    description: "Campo de caracteres do comprimento 10"
    sql: ${TABLE}.DATA_PREVISTA ;;
  }
  dimension: data_real {
    type: string
    description: "Campo de caracteres do comprimento 10"
    sql: ${TABLE}.DATA_REAL ;;
  }

  dimension: hora_prevista {
    type: string
    description: "Campo de caracteres do comprimento 10"
    sql: ${TABLE}.HORA_PREVISTA ;;
  }
  dimension: hora_real {
    type: string
    description: "Campo de caracteres do comprimento 10"
    sql: ${TABLE}.HORA_REAL ;;
  }
  dimension: km_duto {
    type: string
    description: "Texto breve para o código"
    sql: ${TABLE}.KM_DUTO ;;
  }

  dimension: nota {
    type: string
    label: "Nº da nota"
    description: "Nº da nota"
    sql: ${TABLE}.n_nota ;;
  }

  dimension: pontos_notaveis {
    type: string
    description: "Texto breve para o código"
    sql: ${TABLE}.ponto_notavel ;;
  }
  dimension: responsavel {
    type: string
    description: "Character field of length 40"
    sql: ${TABLE}.RESPONSAVEL ;;
  }

  measure: count {
    type: count
  }
}
