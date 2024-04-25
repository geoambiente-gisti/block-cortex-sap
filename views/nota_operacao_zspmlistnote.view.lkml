view: nota_operacao_zspmlistnote {
  sql_table_name: `@{GCP_PROJECT}.@{LOG_DATASET}.nota_operacao_looker` ;;

  dimension: contactname {
    type: string
    label: "Contato"
    sql: ${TABLE}.contato ;;
  }

  dimension: mzeit {
    type: string
    label: "Hora da nota"
    sql:extract(time from ${TABLE}.data_hora) ;;
  }
  dimension: name {
    type: string
    label: "Responsável"
    sql: ${TABLE}.responsavel ;;
  }
  dimension: occur_type {
    type: string
    label: "Tipo Ocorrência"
    sql: ${TABLE}.tipo_ocorrencia ;;
  }

  dimension: pltxt {
    type: string
    label: "Denominação do loc.instalação"
    sql: ${TABLE}.denominacao_local_instalacao ;;
  }

  dimension: local_instalacao_descricao {
    type: string
    label: "Local de instalação"
    sql: concat(${TABLE}.local_instalacao, ' ', ${local_instalacao.descricao}) ;;
  }

  dimension: estado_operacional {
    type: string
    label: "Estado Operacional"
    sql: ${TABLE}.estado_operacional;;
  }

  dimension: sistema {
    order_by_field: qmdat_date
    label: "Sistema"
    type: string
    sql:  ${TABLE}.area_sistema;;
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
    sql: extract(date from ${TABLE}.data_hora) ;;
  }

  dimension_group: data_retorno_operacao {
    label: "Data Retorno Operação"
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
    sql: ${TABLE}.data_retorno_operacao ;;
  }


  dimension: mes_nota {
    order_by_field: qmdat_date
    label: "Mês"
    type: string
    sql:  cast(extract(month from ${TABLE}.data_hora) as string);;
  }

  dimension: ano_nota {
    label: "Ano"
    type: string
    sql:  cast(extract(year from ${TABLE}.data_hora) as string);;
  }

  dimension: acionamento_sobreaviso {
    label: "Acionamento Sobreaviso"
    type: string
    sql:  if(${TABLE}.acionamento_sobreaviso = true, 'Sim', 'Não');;
  }

  dimension: passagem_turno {
    label: "Passagem Turno"
     type: string
    sql:  if(${TABLE}.passagem_turno = true, 'Sim', 'Não');;
  }

  dimension: qmnum {
    link: {
      label: "Detalhe da Nota de Operação"
      url: "https://tbgbr.cloud.looker.com/dashboards/4?N%C2%BA+da+nota={{ value }}&hide_filter=N%C2%BA+da+nota"
    }
    type: string
    primary_key: yes
    label: "Nº Nota Operação Relacionamento"
    sql: ${TABLE}.n_nota ;;
  }

  dimension: n_nota_serial {
    link: {
      label: "Detalhe da Nota de Operação"
      url: "https://tbgbr.cloud.looker.com/dashboards/cortex_sap_operational::detalhes_da_nota_de_operao?N%C2%BA+Nota+Opera%C3%A7%C3%A3o={{ value }}&hide_filter=N%C2%BA+Nota+Opera%C3%A7%C3%A3o"
    }
    type: string
    label: "Nº Nota Operação"
    sql: ${TABLE}.n_nota_serial ;;
  }

  dimension: tplnr {
    type: string
    label: "Local de instalação"
    sql: ${TABLE}.local_instalacao ;;
  }
  dimension: nome {
    type: string
    label: "Responsavel"
    sql: if(${responsavel.nome} is null , ${TABLE}.responsavel, ${responsavel.nome}) ;;
  }
  dimension: local_descricao {
    type: string
    label: "Local de instalação"
    sql: concat(${TABLE}.local_instalacao, "-", ${TABLE}.denominacao_local_instalacao) ;;
  }
  dimension: txtstat {
    type: string
    label: "Status"
    sql: ${TABLE}.status ;;
  }

  dimension: is_manutencao {
    type: string
    label: "Possui Operação"
    sql: if(${nota_operacao_zspmlistnote.qmnum}=${nota_manutencao_zspmlistnote.n_nota_operacao} , "SIM", "NÃO") ;;
  }

  dimension: turno {
    type: string
    label: "Turno"
    sql:  case when extract(time from ${TABLE}.data_hora) between '07:00:00' and '15:00:00' then '07hs as 15hs'
    when extract(time from ${TABLE}.data_hora) between '15:00:00' and '23:00:00' then '15hs as 23hs' else '23:00hs as 07:00hs' end;;
  }
  measure: count {
    type: count
    drill_fields: [contactname, name]
  }
}
