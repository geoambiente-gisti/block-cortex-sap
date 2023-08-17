view: nota_manutencao_desc {
  sql_table_name: `tbg-cloud-dev.SAP_LOG.nota_manutencao_desc` ;;

  dimension: descricao {
    type: string
    sql: ${TABLE}.descricao ;;
  }
  dimension: qmnum {
    label: "Nº da Nota"
    type: string
    sql: ${TABLE}.qmnum ;;
  }
  measure: count {
    type: count
  }
}
