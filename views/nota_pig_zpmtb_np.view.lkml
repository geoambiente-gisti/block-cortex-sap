view: nota_pig_zpmtb_np {
  sql_table_name: `@{GCP_PROJECT}.@{LOG_DATASET}.nota_pig_zpmtb_np` ;;

  dimension: bay_pass {
    type: number
    description: "Fator de By Pass"
    sql: ${TABLE}.BAY_PASS ;;
  }
  dimension: contato {
    type: string
    description: "Character field of length 40"
    sql: ${TABLE}.CONTATO ;;
  }
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
  dimension: densidade {
    type: string
    description: "Texto breve para o código"
    sql: ${TABLE}.DENSIDADE ;;
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
  dimension: l_lancamento {
    type: string
    description: "Valor da característica"
    sql: ${TABLE}.L_LANCAMENTO ;;
  }
  dimension: mandt {
    type: string
    description: "Mandante"
    sql: ${TABLE}.MANDT ;;
  }
  dimension: motivo_cod {
    type: string
    description: "Texto breve para o código"
    sql: ${TABLE}.MOTIVO ;;
  }
  dimension: motivo_convert {
    label: "Motivo"
    type: string
    description: "Texto breve para o código"
    sql: `@{GCP_PROJECT}.@{LOG_DATASET}.convert_motivo`(${TABLE}.MOTIVO) ;;
  }
  dimension: nota {
    type: string
    label: "Nº da nota"
    description: "Nº da nota"
    sql: ${TABLE}.NOTA ;;
  }
  dimension: num_item {
    type: string
    description: "Nº do item na impressão da nota PM"
    sql: ${TABLE}.NUM_ITEM ;;
  }
  dimension: observacao {
    type: string
    description: "Caractere 100"
    sql: ${TABLE}.OBSERVACAO ;;
  }
  dimension: pontos_notaveis {
    type: string
    description: "Texto breve para o código"
    sql: ${TABLE}.PONTOS_NOTAVEIS ;;
  }
  dimension: responsavel {
    type: string
    description: "Character field of length 40"
    sql: ${TABLE}.RESPONSAVEL ;;
  }
  dimension: temp_amb {
    type: string
    description: "Caractere 100"
    sql: ${TABLE}.TEMP_AMB ;;
  }
  dimension: tipo {
    type: string
    description: "Texto breve para o código"
    sql: ${TABLE}.TIPO ;;
  }

  dimension: tipo_convert {
    type: string
    description: "Texto breve para o código"
    sql: `@{GCP_PROJECT}.@{LOG_DATASET}.convert_pig`(${TABLE}.TIPO) ;;
  }
  measure: count {
    type: count
  }
}
