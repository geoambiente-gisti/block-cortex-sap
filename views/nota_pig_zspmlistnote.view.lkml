view: nota_pig_zspmlistnote {
  sql_table_name: `@{GCP_PROJECT}.@{LOG_DATASET}.nota_passagem_pig_looker` ;;

  dimension: mzeit {
    label: "Hora da nota"
    type: string
    description: "Hora da nota"
    sql: extract(time from ${TABLE}.data_hora) ;;
  }
  dimension: name {
    label: "Responsável"
    type: string
    description: "Nome completo da pessoa"
    sql: ${TABLE}.responsavel ;;
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
    sql:  extract(date from ${TABLE}.data_hora) ;;
  }

  dimension: local_instalacao_descricao {
    type: string
    label: "Local de Lançamento"
    sql: concat(${TABLE}.local_instalacao, ' ', ${local_instalacao.descricao}) ;;
  }

  dimension: qmnum {
    label: "Nº da nota"
    type: string
    description: "Nº da nota relacionamento"
    link: {
      label: "Detalhe da Nota de Passagem PIG"
      url: "https://tbgbr.cloud.looker.com/dashboards/2?N%C2%BA+da+nota={{ value }}&hide_filter=N%C2%BA+da+nota"
    }
    sql: ${TABLE}.n_nota ;;
  }

  dimension: n_nota_serial {
    link: {
      label: "Detalhe da Nota de Operação"
      url: "https://tbgbr.cloud.looker.com/dashboards/cortex_sap_operational::detalhes_da_nota_de_passagem_de_pig?Nº+da+Nota+Serial={{ value }}&hide_filter=Nº+da+Nota+Serial"
    }
    type: string
    label: "Nº da Nota"
    sql: ${TABLE}.n_nota_serial ;;
  }

  dimension: tipo {
    type: string
    description: "Tipo"
    sql: ${TABLE}.tipo_pig ;;
  }
  dimension: motivo {
    type: string
    description: "Motivo"
    sql: ${TABLE}.motivo ;;
  }
  # dimension: titulo {
  #   type: string
  #   description: "Título"
  #   sql: ${TABLE}.TITULO ;;
  # }
  dimension: tplnr {
    type: string
    label: "Local de Lançamento"
    sql: ${TABLE}.local_instalacao ;;
  }
  dimension: txtstat {
    label: "Status individual de um objeto"
    type: string
    description: "Status individual de um objeto"
    sql: ${TABLE}.status ;;
  }
  dimension: nome {
    type: string
    label: "Responsavel"
    sql: if(${responsavel.nome} is null , ${TABLE}.responsavel, ${responsavel.nome}) ;;
  }

  dimension: data_nota {
    label: "Data da nota HTML"
    description: "Data da nota"
    type: string
    sql: cast(format_date('%d/%m/%Y', ${TABLE}.data_hora) as string) ;;
  }

  dimension: descricao {
    label: "Descrição Html"
    type: string
    sql: ${nota_pig_desc.descricao} ;;
  }


  dimension: html_info {
    label: "Notas"
    type: string
    sql: ${TABLE}.n_nota ;;
    html:
    <div>
      <b>Nota</b>: {{ value }} <br>
      <b>Data</b>: {{ nota_pig_zspmlistnote.data_nota._value }} <br>
      <b>Local de Instalação</b>: {{ nota_pig_zspmlistnote.local_instalacao_descricao._value }}  <br>
      <b>Motivo</b>: {{ nota_pig_zspmlistnote.motivo._value }} <br>
      <b>Tipo</b>: {{ nota_pig_zspmlistnote.tipo._value }} <br>
      <b>Responsável</b>: {{ nota_pig_zspmlistnote.nome._value }} <br>
      <hr>
      <p style="white-space:pre">{{ nota_pig_zspmlistnote.descricao._value }}<p>
      <hr>
    </div> ;;
  }

  measure: count {
    type: count
    drill_fields: [qmnum,  name, qmdat.date]
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
