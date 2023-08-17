view: nota_instrucao_operacional_zspmtext_desc {
  sql_table_name: `tbg-cloud-dev.SAP_LOG.nota_instrucao_operacional_zspmtext_desc_table` ;;

  dimension: qmnum {
    type: string
    label: "Nº da Instrução Operacional"
    description: "Nº da nota"
    sql: ${TABLE}.QMNUM ;;
  }
  dimension: tdformat {
    type: string
    description: "Coluna de formato"
    sql: case when ${TABLE}.TDFORMAT = '*' then 1 else 2 end ;;
  }
  dimension: tdline {
    type: string
    label: "Observação"
    description: "Linha de texto"
    sql: ${TABLE}.TDLINE ;;
  }

  dimension: no_orderby {    type: number    sql: null ;;  }

  measure: count {
    type: count
  }
}
