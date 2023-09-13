view: pontos_notaveis {
  sql_table_name: `tbg-cloud-dev.SAP_LOG.pontos_notaveis` ;;

  dimension: codigo {
    type: string
    sql: ${TABLE}.codigo ;;
  }
  dimension: grupo_codigo {
    type: string
    sql: ${TABLE}.grupo_codigo ;;
  }
  dimension: instalacao {
    type: string
    sql: ${TABLE}.instalacao ;;
  }
  dimension: km_duto {
    type: string
    sql: ${TABLE}.km_duto ;;
  }
  dimension: nome {
    type: string
    sql: ${TABLE}.nome ;;
  }
  dimension: texto_breve {
    label: "Denominação Local de Lançamento"
    type: string
    sql: ${TABLE}.texto_breve ;;
  }
  measure: count {
    type: count
  }
}
