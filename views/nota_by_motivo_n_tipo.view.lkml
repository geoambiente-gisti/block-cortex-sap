view: nota_by_motivo_n_tipo {
  sql_table_name: `tbg-cloud-dev.SAP_LOG.nota_by_motivo_n_tipo` ;;

  dimension: motivo {
    label: "Motivo da Operação"
    type: string
    sql: ${TABLE}.motivo ;;
  }
  dimension: nota {
    type: string
    sql: ${TABLE}.NOTA ;;
  }
  dimension: tipo {
    label: "Tipo de PIG"
    type: string
    sql: ${TABLE}.tipo ;;
  }
  dimension: bay_pass {
    label: "Fator de By Pass (%)"
    type: string
    sql: ${TABLE}.BAY_PASS ;;
  }
  dimension: DENSIDADE {
    label: "Densidade Relativa"
    type: string
    sql: ${TABLE}.DENSIDADE ;;
  }

  dimension: local_lancamento {
    label: "Local de Lançamento"
    type: string
    sql: ${TABLE}.L_LANCAMENTO ;;
  }
  measure: count {
    type: count
  }
}
