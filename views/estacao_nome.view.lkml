view: estacao_nome {
  sql_table_name: `@{GCP_PROJECT}.@{LOG_DATASET}.estacao_nome` ;;

  dimension: codigo_sap {
    type: string
    sql: ${TABLE}.codigo_sap ;;
  }
  dimension: codigo_scada {
    type: string
    sql: ${TABLE}.codigo_scada ;;
  }
  dimension: nome_ponto {
    type: string
    sql: ${TABLE}.nome_ponto ;;
  }

  dimension: nome_estacao {
    type: string
    sql: concat(${TABLE}.codigo_sap, ' ',${TABLE}.nome_ponto) ;;
  }

  dimension: pe_ecomp {
    type: string
    sql: case when ${TABLE}.nome_ponto like "%Ponto de Entrega%" then "Ponto de Entrega"
      when ${TABLE}.nome_ponto like "%Estação de Compressão%" then "Estação de Compressão" else ${TABLE}.nome_ponto end;;
  }
  measure: count {
    type: count
  }
}
