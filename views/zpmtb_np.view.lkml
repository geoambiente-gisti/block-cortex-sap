view: zpmtb_np {
  sql_table_name: `tbg-cloud-dev.SAP_LOG.nota_pig_np` ;;

  # dimension: bay_pass {
  #   type: number
  #   description: "Fator de By Pass"
  #   sql: ${TABLE}.BAY_PASS ;;
  # }
  # dimension: contato {
  #   type: string
  #   description: "Character field of length 40"
  #   sql: ${TABLE}.CONTATO ;;
  # }
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
  # dimension: densidade {
  #   type: string
  #   description: "Texto breve para o código"
  #   sql: ${TABLE}.DENSIDADE ;;
  # }
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
  # dimension: l_lancamento {
  #   type: string
  #   description: "Valor da característica"
  #   sql: ${TABLE}.ponto_notavel ;;
  # }
  # dimension: mandt {
  #   type: string
  #   description: "Mandante"
  #   sql: ${TABLE}.MANDT ;;
  # }
  # dimension: motivo {
  #   type: string
  #   description: "Texto breve para o código"
  #   sql: ${TABLE}.MOTIVO ;;
  # }
  dimension: nota {
    type: string
    description: "Nº da nota"
    sql: ${TABLE}.NOTA ;;
  }
  # dimension: num_item {
  #   type: string
  #   description: "Nº do item na impressão da nota PM"
  #   sql: ${TABLE}.NUM_ITEM ;;
  # }
  # dimension: observacao {
  #   type: string
  #   description: "Caractere 100"
  #   sql: ${TABLE}.OBSERVACAO ;;
  # }
  dimension: pontos_notaveis {
    type: string
    description: "Texto breve para o código"
    sql: ${TABLE}.PONTOS_NOTAVEIS ;;
  }
  dimension: responsavel {
    label: "Responsável"
    type: string
    description: "Character field of length 40"
    sql: ${TABLE}.RESPONSAVEL ;;
  }
  # dimension: temp_amb {
  #   type: string
  #   description: "Caractere 100"
  #   sql: ${TABLE}.TEMP_AMB ;;
  # }
  # dimension: tipo {
  #   type: string
  #   description: "Texto breve para o código"
  #   sql: ${TABLE}.TIPO ;;
  # }
  measure: count {
    type: count
  }
}
