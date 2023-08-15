view: nota_pig_zspmlistnote {
  sql_table_name: `tbg-cloud-dev.SAP_LOG.nota_pig_zspmlistnote` ;;


  dimension: contactname {
    type: string
    description: "Texto breve/denominação do objeto"
    sql: ${TABLE}.CONTACTNAME ;;
  }
  dimension: empac_atual {
    type: string
    description: "Empacotamento Atual"
    sql: ${TABLE}.EMPAC_ATUAL ;;
  }
  dimension: empac_previsto {
    type: string
    description: "Empacotamento Previsto"
    sql: ${TABLE}.EMPAC_PREVISTO ;;
  }
  dimension: ltrmn {
    type: string
    description: "Data de conclusão desejada"
    sql: ${TABLE}.LTRMN ;;
  }
  dimension: modif {
    type: string
    description: "PM - Nota pode ser modificada?"
    sql: ${TABLE}.MODIF ;;
  }
  dimension: mzeit {
    label: "Hora da nota"
    type: string
    description: "Hora da nota"
    sql: ${TABLE}.MZEIT ;;
  }
  dimension: name {
    label: "Nome completo da pessoa"
    type: string
    description: "Nome completo da pessoa"
    sql: ${TABLE}.NAME ;;
  }
  dimension: occur_type {
    type: string
    description: "Caractere 1024"
    sql: ${TABLE}.OCCUR_TYPE ;;
  }
  dimension: orgname {
    type: string
    description: "Valor da característica"
    sql: ${TABLE}.ORGNAME ;;
  }
  dimension: pltxt {
    type: string
    description: "Denominação do loc.instalação"
    sql: ${TABLE}.PLTXT ;;
  }
  dimension: prog_entrega {
    type: string
    description: "Programação Entrega"
    sql: ${TABLE}.PROG_ENTREGA ;;
  }
  dimension: prog_receb {
    type: string
    description: "Programação Recebimento"
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
    label: "Nº da nota"
    type: string
    description: "Nº da nota"
    link: {
      label: "Detalhe da Nota de Passagem PIG"
      url: "https://tbgbr.cloud.looker.com/dashboards/2?N%C2%BA+da+nota={{ value }}&hide_filter=N%C2%BA+da+nota"
    }
    sql: ${TABLE}.QMNUM ;;
  }


  dimension: qmtxt {
    type: string
    description: "Texto breve"
    sql: ${TABLE}.QMTXT ;;
  }
  dimension: tipo {
    type: string
    description: "Tipo"
    sql: ${TABLE}.TIPO ;;
  }
  dimension: titulo {
    type: string
    description: "Título"
    sql: ${TABLE}.TITULO ;;
  }
  dimension: tplnr {
    type: string
    description: "Local de instalação"
    sql: ${TABLE}.TPLNR ;;
  }
  dimension: txtstat {
    label: "Status individual de um objeto"
    type: string
    description: "Status individual de um objeto"
    sql: ${TABLE}.TXTSTAT ;;
  }
  measure: count {
    type: count
    drill_fields: [contactname, orgname, name]
  }

  measure: count_by_closed {
    type: sum
    # drill_fields: [contactname, orgname, name]
    sql: case when ${txtstat} = 'Encerrada' then 1 else 0 end ;;
  }

  measure: count_by_opened {
    type: sum
    # drill_fields: [contactname, orgname, name]
    sql: case when ${txtstat} = 'Em Aberto' then 1 else 0 end ;;
  }
}