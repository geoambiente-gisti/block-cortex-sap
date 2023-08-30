view: local_instalacao {
  sql_table_name: `tbg-cloud-dev.SAP_LOG.local_instalacao` ;;

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

  measure: count {
    type: count
  }
}