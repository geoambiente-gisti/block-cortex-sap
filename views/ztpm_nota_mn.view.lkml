view: ztpm_nota_mn {
  sql_table_name: `tbg-cloud-dev.SAP_LOG.ZTPM_NOTA_MN` ;;

  dimension: apos_manutencao {
    type: string
    description: "Texto breve/denominação do objeto"
    sql: ${TABLE}.APOS_MANUTENCAO ;;
  }
  dimension: cod_operacional {
    type: string
    description: "Texto breve/denominação do objeto"
    sql: ${TABLE}.COD_OPERACIONAL ;;
  }
  dimension: deteccao {
    type: string
    description: "Texto breve/denominação do objeto"
    sql: ${TABLE}.DETECCAO ;;
  }
  dimension: equip_afetado {
    type: string
    description: "Texto breve/denominação do objeto"
    sql: ${TABLE}.EQUIP_AFETADO ;;
  }
  dimension: mandt {
    type: string
    description: "Mandante"
    sql: ${TABLE}.MANDT ;;
  }
  dimension: modo_falha {
    type: string
    description: "Texto breve/denominação do objeto"
    sql: ${TABLE}.MODO_FALHA ;;
  }
  dimension: qmnum {
    type: string
    description: "Nº da nota"
    sql: ${TABLE}.QMNUM ;;
  }
  measure: count {
    type: count
  }
}
