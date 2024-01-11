view: nota_instrucao_operacional_zspmlistnote {
  sql_table_name: `@{GCP_PROJECT}.@{LOG_DATASET}.nota_instrucao_operacional_looker` ;;

  # dimension: contactname {
  #   type: string
  #   description: "Texto breve/denominação do objeto"
  #   sql: ${TABLE}.CONTACTNAME ;;
  # }
  # dimension: empac_atual {
  #   type: string
  #   description: "Empacotamento Atual"
  #   sql: ${TABLE}.EMPAC_ATUAL ;;
  # }
  dimension: empac_previsto {
    type: string
    description: "Empacotamento Previsto"
    sql: ${TABLE}.EMPAC_PREVISTO ;;
  }

  dimension_group: ltrmn {
    label: "Data Validade"
    description: "Data de conclusão desejada"
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql:  ${TABLE}.data_validade ;;
  }

  # dimension: modif {
  #   type: string
  #   description: "PM - Nota pode ser modificada?"
  #   sql: ${TABLE}.MODIF ;;
  # }
  dimension: mzeit {
    label: "Hora"
    type: string
    description: "Hora da nota"
    sql: extract(time from ${TABLE}.data_hora) ;;
  }
  dimension: name {
    label: "Responsavel"
    type: string
    description: "Nome completo da pessoa"
    sql: ${TABLE}.responsavel ;;
  }
  # dimension: occur_type {
  #   type: string
  #   description: "Caractere 1024"
  #   sql: ${TABLE}.OCCUR_TYPE ;;
  # }
  # dimension: orgname {
  #   type: string
  #   description: "Valor da característica"
  #   sql: ${TABLE}.ORGNAME ;;
  # }
  # dimension: pltxt {
  #   type: string
  #   description: "Denominação do loc.instalação"
  #   sql: ${TABLE}.PLTXT ;;
  # }
  # dimension: prog_entrega {
  #   type: string
  #   description: "Programação Entrega"
  #   sql: ${TABLE}.PROG_ENTREGA ;;
  # }
  # dimension: prog_receb {
  #   type: string
  #   description: "Programação Recebimento"
  #   sql: ${TABLE}.PROG_RECEB ;;
  # }
  dimension_group: qmdat {
    label: "Data Abertura"
    description: "Data da nota"
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql:  extract(date from ${TABLE}.data_hora);;
  }

  dimension: qmnum {
    link: {
      label: "Detalhe da Nota de Instrução Operacional"
      url: "https://tbgbr.cloud.looker.com/dashboards/8?Nº+da+Instrução+Operacional={{ value }}&hide_filter=Nº+da+Instrução+Operacional"
    }
    type: string
    primary_key: yes
    label: "Nº da nota"
    sql: ${TABLE}.n_nota ;;
  }
  # dimension: qmtxt {
  #   type: string
  #   description: "Texto breve"
  #   sql: ${TABLE}.QMTXT ;;
  # }
  dimension: tipo {
    type: string
    label: "Tipo"
    description: "Tipo"
    sql: ${TABLE}.TIPO ;;
  }
  dimension: titulo {
    label: "Titulo"
    type: string
    description: "Título"
    sql: ${TABLE}.TITULO ;;
  }
  # dimension: tplnr {
  #   label: "Local de Instalação"
  #   type: string
  #   description: "Local de instalação"
  #   sql: ${TABLE}.TPLNR ;;
  # }
  dimension: txtstat {
    label: "Status"
    type: string
    description: "Status individual de um objeto"
    sql: ${TABLE}.status ;;
  }
  dimension: descricao {
    label: "Descrição"
    html: <div style="white-space:pre">{{ value }}</div> ;;
    type: string
    description: "Descricao"
    sql: ${TABLE}.descricao ;;
  }
  measure: count {
    type: count
    drill_fields: [qmnum, tipo, name]
  }
}
