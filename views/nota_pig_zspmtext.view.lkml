view: nota_pig_zspmtext {
  sql_table_name: `tbg-cloud-dev.SAP_LOG.nota_pig_zspmtext` ;;

  dimension: qmnum {
    type: string
    description: "Nº da nota"
    sql: ${TABLE}.QMNUM ;;
  }
  dimension: tdformat {
    type: string
    description: "Coluna de formato"
    sql: ${TABLE}.TDFORMAT ;;
  }
  dimension: tdline {
    type: string
    description: "Linha de texto"
    sql: ${TABLE}.TDLINE ;;
  }
  measure: count {
    type: count
  }
}
