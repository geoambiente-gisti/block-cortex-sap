view: sistemas {
  sql_table_name: `tbg-cloud-dev.SAP_LOG.sistemas` ;;

  dimension: categoria_local {
    type: string
    sql: ${TABLE}.categoria_local ;;
  }
  dimension: cod_local {
    type: string
    sql: ${TABLE}.cod_local ;;
  }
  dimension: descricao {
    type: string
    sql: ${TABLE}.descricao ;;
  }
  dimension: estado_operacional {
    type: string
    sql: ${TABLE}.estado_operacional ;;
  }
  dimension: instalacao {
    type: string
    sql: ${TABLE}.instalacao ;;
  }
  dimension: nome_local_superior {
    type: string
    sql: ${TABLE}.nome_local_superior ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }
  measure: count {
    type: count
  }
}
