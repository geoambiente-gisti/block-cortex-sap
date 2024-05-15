view: nota_instrucao_operacional_zspmlistnote {
  sql_table_name: `@{GCP_PROJECT}.@{LOG_DATASET}.nota_instrucao_operacional_looker` ;;

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
    label: "Nº da nota relacionamento"
    sql: ${TABLE}.n_nota ;;
  }

  dimension: n_nota_serial {
    link: {
      label: "Detalhe da Nota de Operação"
      url: "https://tbgbr.cloud.looker.com/dashboards/cortex_sap_operational::descrio_e_observaes_das_nota_de_instruo_operacional?N%C2%BA+da+Nota+Serial={{ value }}&hide_filter=N%C2%BA+da+Nota+Serial"
    }
    type: string
    label: "Nº da Nota"
    sql: ${TABLE}.n_nota_serial ;;
  }

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

  dimension: data_nota {
    label: "Data da nota HTML"
    description: "Data da nota"
    type: string
    sql: cast(format_date('%d/%m/%Y', ${TABLE}.data_hora) as string) ;;
  }

  dimension: descricao_html {
    label: "Descrição Html"
    type: string
    sql: ${nota_instrucao_operacional_desc.descricao} ;;
  }

# nota_instrucao_operacional_zspmlistnote.n_nota_serial, nota_instrucao_operacional_zspmlistnote.titulo,
#       nota_instrucao_operacional_zspmlistnote.tipo, nota_instrucao_operacional_zspmlistnote.qmdat_date,
#       nota_instrucao_operacional_zspmlistnote.mzeit, nota_instrucao_operacional_zspmlistnote.ltrmn_date,responsavel.email
#       nota_instrucao_operacional_zspmlistnote.name, responsavel.email, nota_instrucao_operacional_zspmlistnote.txtstat

  dimension: html_info {
    label: "Notas"
    type: string
    sql: ${TABLE}.n_nota ;;
    html:
    <div>
      <b>Nota</b>: {{ value }} <br>
      <b>Titulo</b>: {{ nota_instrucao_operacional_zspmlistnote.titulo._value }} <br>
      <b>Tipo</b>: {{ nota_instrucao_operacional_zspmlistnote.tipo._value }} <br>
      <b>Data</b>: {{ nota_instrucao_operacional_zspmlistnote.data_nota._value }} <br>
      <b>Responsável</b>: {{ nota_instrucao_operacional_zspmlistnote.name._value }} <br>
      <b>Data de Validade</b>: {{ nota_instrucao_operacional_zspmlistnote.ltrmn_date._value }} <br>
      <b>Status</b>: {{ nota_instrucao_operacional_zspmlistnote.txtstat._value }} <br>


      <hr>
      <p style="white-space:pre">{{ nota_instrucao_operacional_zspmlistnote.descricao_html._value }}<p>
      <hr>
    </div> ;;
  }

  measure: count {
    type: count
    drill_fields: [qmnum, tipo, name]
  }
}
