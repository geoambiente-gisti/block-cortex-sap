view: nota_operacao_formatada {
  sql_table_name: `tbg-app-prod.SAP_LOG.nota_operacao_formatada` ;;

  dimension: formatted {
    type: string
    sql: ${TABLE}.formatted ;;
  }
  dimension: nota_operacao_zspmlistnote_contactname {
    type: string
    sql: ${TABLE}.nota_operacao_zspmlistnote_contactname ;;
  }
  dimension: nota_operacao_zspmlistnote_data_nota {
    type: string
    sql: ${TABLE}.nota_operacao_zspmlistnote_data_nota ;;
  }
  dimension: nota_operacao_zspmlistnote_descricao {
    type: string
    sql: ${TABLE}.nota_operacao_zspmlistnote_descricao ;;
  }
  dimension: nota_operacao_zspmlistnote_html_info {
    type: string
    sql: ${TABLE}.nota_operacao_zspmlistnote_html_info ;;
  }
  dimension: nota_operacao_zspmlistnote_local_descricao {
    type: string
    sql: ${TABLE}.nota_operacao_zspmlistnote_local_descricao ;;
  }
  dimension: nota_operacao_zspmlistnote_nome {
    type: string
    sql: ${TABLE}.nota_operacao_zspmlistnote_nome ;;
  }
  dimension: nota_operacao_zspmlistnote_occur_type {
    type: string
    sql: ${TABLE}.nota_operacao_zspmlistnote_occur_type ;;
  }
  dimension: nota_operacao_zspmlistnote_txtstat {
    type: string
    sql: ${TABLE}.nota_operacao_zspmlistnote_txtstat ;;
  }
  measure: count {
    type: count
    drill_fields: [nota_operacao_zspmlistnote_contactname]
  }
}
