view: nota_manutencao_zspmlistnote {
  sql_table_name: `@{GCP_PROJECT}.@{LOG_DATASET}.nota_manutencao_looker` ;;

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

  dimension: mes_nota {
    order_by_field: qmdat_date
    label: "Mês"
    type: string
    sql:  cast(extract(month from ${TABLE}.data_hora) as string);;
  }

  dimension: prioridade {
    order_by_field: qmdat_date
    label: "Prioridade"
    type: string
    sql:  ${TABLE}.prioridade;;
  }

  dimension: area_sistema {
    label: "Area Sistema"
    type: string
    sql:  ${TABLE}.area_sistema;;
  }


  dimension: area_sistema_length {
    label: "Area Sistema Length"
    type: number
    sql: array_length(split(left(${TABLE}.area_sistema, 9), '-')) ;;
  }

  dimension: area_sistema_split {
    label: "Area Sistema Split"
    type: number
    sql: split(left(${TABLE}.area_sistema, 9), '-');;
  }
  dimension: area_sistema_3 {
    label: "Sistemas"
    type: string
    sql: case
    when
      ${area_sistema_length} < 3 then ${estacao_nome.pe_ecomp}
    when ${area_sistema_length} >= 3 and  ${area_sistema_split}[2] like 'ST%' then 'Sistema Tubulações dentro da instalação'
    when ${area_sistema_length} >= 3 and  ${area_sistema_split}[2] like 'AD%' then 'Sucção, Filtragem e Desc de Gás da ECOMP'
    when ${area_sistema_length} >= 3 and  ${area_sistema_split}[2] like 'GA%' then 'Grupo Compressão de Gás'
    when ${area_sistema_length} >= 3 and  ${area_sistema_split}[2] like 'GB%' then 'Grupo Compressão de Gás'
    when ${area_sistema_length} >= 3 and  ${area_sistema_split}[2] like 'GC%' then 'Grupo Compressão de Gás'
    when ${area_sistema_length} >= 3 and  ${area_sistema_split}[2] like 'GD%' then 'Grupo Compressão de Gás'
    when ${area_sistema_length} >= 3 and  ${area_sistema_split}[2] like 'SU%' then 'Sistema Utilidades'
    when ${area_sistema_length} >= 3 and  ${area_sistema_split}[2] like 'AT%' then 'Sistema de Automação e Controle'
    when ${area_sistema_length} >= 3 and  ${area_sistema_split}[2] like 'ES%' then 'Entrada e Saída do Ponto de Entrega'
    when ${area_sistema_length} >= 3 and  ${area_sistema_split}[2] like 'SF%' then 'Sistema de Filtragem de Gás'
    when ${area_sistema_length} >= 3 and  ${area_sistema_split}[2] like 'SM%' then 'Sistema de Medição de Gás para CDL'
    when ${area_sistema_length} >= 3 and  ${area_sistema_split}[2] like 'SU%' then 'Sistema Utilidades'
    when ${area_sistema_length} >= 3 and  ${area_sistema_split}[2] like 'SR%' then 'Sistema de Redução de Gás'
    when ${area_sistema_length} >= 3 and  ${area_sistema_split}[2] like 'MQ%' then 'Sistema de Qualidade do Gás'

    when ${area_sistema_length} >= 3 and  ${area_sistema_split}[2] like 'SA%' and ${estacao_nome.pe_ecomp} = 'Estação de Compressão' then 'Sistema Auxiliares'
    when ${area_sistema_length} >= 3 and  ${area_sistema_split}[2] like 'SA%' and ${estacao_nome.pe_ecomp} = 'Ponto de Entrega' then 'Sistema de Aqueciemento de Gás'
    else 'Outros' end
    ;;
  }

  dimension: equipamento {
    order_by_field: qmdat_date
    label: "Equipamento"
    type: string
    sql:  ${TABLE}.equipamento;;
  }

  dimension: sistema {
    order_by_field: qmdat_date
    label: "Sistema"
    type: string
    sql:  ${TABLE}.area_sistema;;
  }

  dimension: ano_nota {
    label: "Ano"
    type: string
    sql:  cast(extract(year from ${TABLE}.data_hora) as string);;
  }

  dimension: qmnum {
    link: {
      label: "Detalhe da Nota de Manutenção"
      url: "https://tbgbr.cloud.looker.com/dashboards/6?N%C2%BA+da+nota={{ value }}&hide_filter=N%C2%BA+da+nota"
    }
    type: string
    primary_key: yes
    label: "Nº da nota de Manutenção Relacionamento"
    sql: ${TABLE}.n_nota ;;
  }


  dimension: n_nota_serial {
    link: {
      label: "Detalhe da Nota de Operação"
      url: "https://tbgbr.cloud.looker.com/dashboards/cortex_sap_operational::observao_e_nota_de_operao_associada_manutencao?N%C2%BA+Nota+Manuten%C3%A7%C3%A3o={{ value }}&hide_filter=N%C2%BA+Nota+Manuten%C3%A7%C3%A3o"
    }
    type: string
    label: "Nº Nota Manutenção"
    view_label: "Nº Nota Manutenção"
    sql: ${TABLE}.n_nota_serial ;;
  }

  dimension: qmtxt {
    type: string
    label: "Descrição Falha"
    sql: ${TABLE}.descricao_falha ;;
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

  dimension: tplnr {
    type: string

    sql: ${TABLE}.local_instalacao ;;
  }


  dimension: local_instalacao_descricao {
    type: string
    label: "Local de instalação"
    sql: concat(${TABLE}.local_instalacao, ' ', ${local_instalacao.descricao}) ;;
  }

  dimension: txtstat {
    type: string
    label: "Status"
    sql: ${TABLE}.status ;;
  }
  dimension: situacao_sap {
    type: string
    label: "Situação SAP"
    sql: ${TABLE}.situacao_sap ;;
  }
  dimension: is_manutencao {
    type: string
    label: "Possui Operação"
    sql: if(${nota_operacao_zspmlistnote.qmnum}=${nota_manutencao_zspmlistnote.n_nota_operacao} , "SIM", "NÃO") ;;
  }

  dimension: nome {
    type: string
    label: "Responsavel"
    sql: if(${responsavel.nome} is null , ${TABLE}.responsavel, ${responsavel.nome}) ;;
  }

  measure: count {
    type: count
    drill_fields: [n_nota_serial, tplnr, area_sistema, name]
  }

  dimension: n_nota_operacao {
    label: "Nº Nota Operacao Relacionamento"
    sql: ${TABLE}.n_nota_operacao ;;
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
    sql: ${nota_manutencao_desc.descricao} ;;
  }

  # [nota_manutencao_zspmlistnote.n_nota_serial, nota_operacao_zspmlistnote.n_nota_serial,
  #     nota_manutencao_zspmlistnote.qmdat_date, nota_manutencao_zspmlistnote.mzeit,nota_manutencao_zspmlistnote.local_instalacao_descricao, nota_manutencao_zspmlistnote.sistema,
  #     nota_manutencao_zspmlistnote.equipamento,nota_manutencao_zspmlistnote.prioridade,nota_manutencao_zspmlistnote.qmtxt ,nota_manutencao_zspmlistnote.nome, responsavel.email
  #     # nota_manutencao_zspmlistnote.txtstat]

  dimension: html_info {
    label: "Notas"
    type: string
    sql: ${TABLE}.n_nota ;;
    html:
    <div >
      <b>Nota</b>: {{ value }} <br>
      <b>Nota Operacao</b>: {{ nota_operacao_zspmlistnote._value }} <br>
      <b>Data</b>: {{ nota_manutencao_zspmlistnote.data_nota._value }} <br>
      <b>Local de Instalação</b>: {{ nota_manutencao_zspmlistnote.local_instalacao_descricao._value }}  <br>
      <b>Sistema</b>: {{ nota_manutencao_zspmlistnote.sistema._value }} <br>
      <b>Equipamento</b>: {{ nota_manutencao_zspmlistnote.equipamento._value }} <br>
      <b>Prioridade</b>: {{ nota_manutencao_zspmlistnote.prioridade._value }} <br>
      <b>Descrição da Falha</b>: {{ nota_manutencao_zspmlistnote.qmtx._value }} <br>
      <b>Responsável</b>: {{ nota_manutencao_zspmlistnote.nome._value }}  <br>
      <b>Status</b>: {{ nota_manutencao_zspmlistnote.txtstat._value }}  <br>
      <hr>
      <p style="white-space:pre">{{ nota_manutencao_zspmlistnote.descricao._value }}<p>
      <hr>
    </div> ;;
  }

  dimension: no_orderby {    type: number    sql: null ;;  }

  measure: count_distinct_mes {
    type: count_distinct
    sql: ${qmdat_month} ;;
  }

  measure: count_distinct_ano {
    type: count_distinct
    sql:  ${ano_nota};;
  }

  measure: count_open {
    type: sum
    label: "Total Em Aberto"
    drill_fields: [qmnum, tplnr, name]
    sql: case when ${txtstat} = "Em Aberto" then 1 else 0 end;;
  }
}
