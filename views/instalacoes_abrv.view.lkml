view: instalacoes_abrv {
  sql_table_name: `tbg-cloud-dev.SAP_LOG.instalacoes_abrv` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: abreviacao {
    type: string
    sql: ${TABLE}.abreviacao ;;
  }
  dimension: denominacao {
    type: string
    sql: ${TABLE}.denominacao ;;
  }
  dimension: l_instalacao {
    type: string
    sql: ${TABLE}.l_instalacao ;;
  }

  dimension: concat_name {
    type: string
    sql: concat(${l_instalacao}, ' ', ${abreviacao}) ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
