view: nota_manutencao_zspmlistnote {
  sql_table_name: `@{GCP_PROJECT}.@{LOG_DATASET}.nota_manutencao_looker` ;;

  # dimension: contactname {
  #   type: string
  #   label: "Contato"
  #   sql: ${TABLE}.CONTACTNAME ;;
  # }
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
    sql: extract(time from ${TABLE}.data_hora) ;;
  }
  dimension: name {
    type: string
    label: "Responsável"
    sql: ${TABLE}.responsavel ;;
  }
  # dimension: occur_type {
  #   type: string
  #   label: "Tipo Ocorrência"
  #   sql: ${TABLE}.OCCUR_TYPE ;;
  # }
  # dimension: orgname {
  #   type: string
  #   label: "Orgão"
  #   sql: ${TABLE}.ORGNAME ;;
  # }
  # dimension: pltxt {
  #   type: string
  #   label: "Denominação do loc.instalação"
  #   sql: ${TABLE}.PLTXT ;;
  # }
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
    label: "Data da nota"
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
    sql:  extract(date from ${TABLE}.data_hora) ;;
  }
  dimension: qmnum {
    link: {
      label: "Detalhe da Nota de Manutenção"
      url: "https://tbgbr.cloud.looker.com/dashboards/6?N%C2%BA+da+nota={{ value }}&hide_filter=N%C2%BA+da+nota"
    }
    type: string
    primary_key: yes
    label: "Nº da nota de Manutenção"
    sql: ${TABLE}.n_nota ;;
  }
  dimension: qmtxt {
    type: string
    label: "Descrição"
    sql: ${TABLE}.descricao_falha ;;
  }
  dimension: condicao_operacional {
    type: string
    label: "Condição Operacional"
    sql: ${TABLE}.condicao_operacional ;;
  }
  dimension: metodo_deteccao {
    type: string
    label: "Método Detecção"
    sql: ${TABLE}.metodo_deteccao ;;
  }
  dimension: modo_falha {
    type: string
    label: "Modo Falha"
    sql: ${TABLE}.modo_falha ;;
  }
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
    label: "Local de instalação"
    sql: ${TABLE}.local_instalacao ;;
  }
  dimension: txtstat {
    type: string
    label: "Status individual de um objeto"
    sql: ${TABLE}.status ;;
  }

  dimension: is_manutencao {
    type: string
    label: "Possui Operação"
    sql: if(${zpmtb_no_nm.num_log_nm}=${nota_manutencao_zspmlistnote.qmnum} and ${zpmtb_no_nm.num_log_nm} is not null , "SIM", "NÃO") ;;
  }

  measure: count {
    type: count
    drill_fields: [qmnum, tplnr, name]
  }

  dimension: no_orderby {    type: number    sql: null ;;  }

  measure: count_open {
    type: sum
    label: "Total Em Aberto"
    drill_fields: [qmnum, tplnr, name]
    sql: case when ${txtstat} = "Em Aberto" then 1 else 0 end;;
  }
}
