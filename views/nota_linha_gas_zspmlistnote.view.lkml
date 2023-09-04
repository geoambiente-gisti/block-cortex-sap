view: nota_linha_gas_zspmlistnote {
  sql_table_name: `@{GCP_PROJECT}.@{LOG_DATASET}.nota_linha_gas` ;;

  dimension: contactname {
    type: string
    label: "Notificante"
    sql: ${TABLE}.notificante ;;
  }
  # dimension: empac_atual {
  #   type: string
  #   label: "Empacotamento Atual"
  #   sql: ${TABLE}.EMPAC_ATUAL ;;
  # }
  # dimension: empac_previsto {
  #   type: string
  #   label: "Empacotamento Previsto"
  #   sql: ${TABLE}.EMPAC_PREVISTO ;;
  # }
  # dimension: ltrmn {
  #   type: string
  #   label: "Data de conclusão desejada"
  #   sql: ${TABLE}.LTRMN ;;
  # }
  # dimension: modif {
  #   type: string
  #   label: "PM - Nota pode ser modificada?"
  #   sql: ${TABLE}.MODIF ;;
  # }
  dimension: mzeit {
    type: string
    label: "Hora da nota"
    sql: split(cast(${TABLE}.data_hora as string), " ")[1] ;;
  }
  dimension: name {
    type: string
    label: "Contato"
    sql: ${TABLE}.contato ;;
  }
  # dimension: occur_type {
  #   type: string
  #   label: "Caractere 1024"
  #   sql: ${TABLE}.OCCUR_TYPE ;;
  # }
  # dimension: orgname {
  #   type: string
  #   label: "Valor da característica"
  #   sql: ${TABLE}.ORGNAME ;;
  # }
  dimension: pltxt {
    type: string
    label: "Descrição"
    sql: ${TABLE}.descricao ;;
  }
  # dimension: prog_entrega {
  #   type: string
  #   label: "Programação Entrega"
  #   sql: ${TABLE}.PROG_ENTREGA ;;
  # }
  # dimension: prog_receb {
  #   type: string
  #   label: "Programação Recebimento"
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
    sql:  CAST(${TABLE}.data_hora as DATE) ;;

  }

  dimension: qmnum {
    link: {
      label: "Detalhe da Nota de Linha de Gás"
      url: "https://tbgbr.cloud.looker.com/dashboards/10?N%C2%BA+da+nota={{ value }}&hide_filter=N%C2%BA+da+nota"
    }
    type: string
    primary_key: yes
    label: "Nº da nota"
    sql: ${TABLE}.n_nota ;;
  }

  # dimension: qmtxt {
  #   type: string
  #   label: "Texto breve"
  #   sql: ${TABLE}.QMTXT ;;
  # }
  # dimension: tipo {
  #   type: string
  #   label: "Tipo"
  #   sql: ${TABLE}.TIPO ;;
  # }
  # dimension: titulo {
  #   type: string
  #   label: "Título"
  #   sql: ${TABLE}.TITULO ;;
  # }
  dimension: tplnr {
    type: string
    label: "Local da Ocorrência"
    sql: ${TABLE}.local_ocorrencia ;;
  }
  dimension: txtstat {
    type: string
    label: "Status individual de um objeto"
    sql: ${TABLE}.status ;;
  }
  measure: count {
    type: count
    drill_fields: [qmnum, tplnr, contactname]
  }

  measure: count_open {
    type: sum
    label: "Total Em Aberto"
    drill_fields: [qmnum, tplnr, contactname]
    sql: case when ${txtstat} = "Em Aberto" then 1 else 0 end;;
  }

  measure: count_close {
    type: sum
    label: "Total Encerrada"
    drill_fields: [qmnum, tplnr, contactname]
    sql: case when ${txtstat} = "Em Aberto" then 0 else 1 end;;
  }
}
