view: nota_manutencao_zspmlistnote {
  sql_table_name: `@{GCP_PROJECT}.@{LOG_DATASET}.nota_manutencao_zspmlistnote` ;;

  dimension: contactname {
    type: string
    label: "Contato"
    sql: ${TABLE}.CONTACTNAME ;;
  }
  dimension: empac_atual {
    type: string
    label: "Empacotamento Atual"
    sql: ${TABLE}.EMPAC_ATUAL ;;
  }
  dimension: empac_previsto {
    type: string
    label: "Empacotamento Previsto"
    sql: ${TABLE}.EMPAC_PREVISTO ;;
  }
  dimension: ltrmn {
    type: string
    label: "Data de conclusão desejada"
    sql: ${TABLE}.LTRMN ;;
  }
  dimension: modif {
    type: string
    label: "PM - Nota pode ser modificada?"
    sql: ${TABLE}.MODIF ;;
  }
  dimension: mzeit {
    type: string
    label: "Hora da nota"
    sql: ${TABLE}.MZEIT ;;
  }
  dimension: name {
    type: string
    label: "Nome completo da pessoa"
    sql: ${TABLE}.NAME ;;
  }
  dimension: occur_type {
    type: string
    label: "Tipo Ocorrência"
    sql: ${TABLE}.OCCUR_TYPE ;;
  }
  dimension: orgname {
    type: string
    label: "Orgão"
    sql: ${TABLE}.ORGNAME ;;
  }
  dimension: pltxt {
    type: string
    label: "Denominação do loc.instalação"
    sql: ${TABLE}.PLTXT ;;
  }
  dimension: prog_entrega {
    type: string
    label: "Programação Entrega"
    sql: ${TABLE}.PROG_ENTREGA ;;
  }
  dimension: prog_receb {
    type: string
    label: "Programação Recebimento"
    sql: ${TABLE}.PROG_RECEB ;;
  }
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
    sql:  CAST(${TABLE}.QMDAT as DATE) ;;
  }
  dimension: qmnum {
    link: {
      label: "Detalhe da Nota de Manutenção"
      url: "https://tbgbr.cloud.looker.com/dashboards/6?N%C2%BA+da+nota={{ value }}&hide_filter=N%C2%BA+da+nota"
    }
    type: string
    primary_key: yes
    label: "Nº da nota"
    sql: ${TABLE}.QMNUM ;;
  }
  dimension: qmtxt {
    type: string
    label: "Descrição"
    sql: ${TABLE}.QMTXT ;;
  }
  dimension: tipo {
    type: string
    label: "Tipo"
    sql: ${TABLE}.TIPO ;;
  }
  dimension: titulo {
    type: string
    label: "Título"
    sql: ${TABLE}.TITULO ;;
  }
  dimension: tplnr {
    type: string
    label: "Local de instalação"
    sql: ${TABLE}.TPLNR ;;
  }
  dimension: txtstat {
    type: string
    label: "Status individual de um objeto"
    sql: ${TABLE}.TXTSTAT ;;
  }

  dimension: is_manutencao {
    type: string
    label: "Possui Operação"
    sql: if(${zpmtb_no_nm.num_log_nm}=${nota_manutencao_zspmlistnote.qmnum} and ${zpmtb_no_nm.num_log_nm} is not null , "SIM", "NÃO") ;;
  }

  measure: count {
    type: count
    drill_fields: [qmnum, tplnr, contactname]
  }

  dimension: no_orderby {    type: number    sql: null ;;  }

  measure: count_open {
    type: sum
    label: "Total Em Aberto"
    drill_fields: [qmnum, tplnr, contactname]
    sql: case when ${txtstat} = "Em Aberto" then 1 else 0 end;;
  }
}
