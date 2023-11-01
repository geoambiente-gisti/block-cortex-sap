view: local_instalacao {
  sql_table_name: `@{GCP_PROJECT}.@{LOG_DATASET}.local_instalacao` ;;

  dimension: categoria_local {
    type: string
    sql: ${TABLE}.categoria_local ;;
  }
  dimension: classe_local {
    type: string
    sql: ${TABLE}.classe_local ;;
  }
  dimension: descricao {
    type: string
    sql: ${TABLE}.descricao ;;
  }
  dimension: nome_local {
    primary_key: yes
    type: string
    sql: ${TABLE}.nome_local ;;
  }
  dimension: nome_local_antigo {
    type: string
    sql: ${TABLE}.nome_local_antigo ;;
  }
  dimension: nome_local_novo {
    type: string
    sql: ${TABLE}.nome_local_novo ;;
  }
  dimension: nome_local_superior {
    type: string
    sql: ${TABLE}.nome_local_superior ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }

  dimension: tipo_instalacao {
    type: string
    sql: ${TABLE}.tipo_instalacao ;;
  }
  dimension: classe_local_texto {
    type: string
    sql: ${TABLE}.classe_local_texto ;;
  }

  dimension: instalacao {
    type: string
    sql: ${TABLE}.instalacao ;;
  }

  dimension: pe_ecomp {
    type: string
    sql: case when ${TABLE}.instalacao like "%Ponto de Entrega%" then "Ponto de Entrega"
    when ${TABLE}.instalacao like "%Estação de Compressão%" then "Estação de Compressão" else ${TABLE}.instalacao end;;
  }

  dimension: nome_pig {
    label: "Local de Lançamento (Denominação)"
    type: string
    sql: ${TABLE}.nome_pig ;;
  }

  measure: count {
    type: count
  }
}
