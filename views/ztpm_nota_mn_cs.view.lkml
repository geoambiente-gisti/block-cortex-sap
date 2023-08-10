view: ztpm_nota_mn_cs {
  sql_table_name: `tbg-cloud-dev.SAP_LOG.ZTPM_NOTA_MN_CS` ;;

  dimension: abcindic {
    type: string
    description: "Código ABC para o objeto técnico"
    sql: ${TABLE}.ABCINDIC ;;
  }
  dimension: cond_oper {
    type: string
    description: "Condição Operacional"
    sql: ${TABLE}.COND_OPER ;;
  }
  dimension: fecod {
    type: string
    description: "Código do problema ou do dano"
    sql: ${TABLE}.FECOD ;;
  }
  dimension: fecod2 {
    type: string
    description: "Código do problema ou do dano"
    sql: ${TABLE}.FECOD2 ;;
  }
  dimension: fecod3 {
    type: string
    description: "Código do problema ou do dano"
    sql: ${TABLE}.FECOD3 ;;
  }
  dimension: impacto_cont {
    type: string
    description: "Impacto Continuidade Operacional IW21"
    sql: ${TABLE}.IMPACTO_CONT ;;
  }
  dimension: impacto_imagem {
    type: string
    description: "Impacto Imagem IW21"
    sql: ${TABLE}.IMPACTO_IMAGEM ;;
  }
  dimension: impacto_instal {
    type: string
    description: "Impacto Instalações / Equipamentos IW21"
    sql: ${TABLE}.IMPACTO_INSTAL ;;
  }
  dimension: impacto_meio {
    type: string
    description: "Impacto Meio Ambiente IW21"
    sql: ${TABLE}.IMPACTO_MEIO ;;
  }
  dimension: impacto_pessoas {
    type: string
    description: "Impacto Pessoas IW21"
    sql: ${TABLE}.IMPACTO_PESSOAS ;;
  }
  dimension: m_falha_code {
    type: string
    description: "Código"
    sql: ${TABLE}.M_FALHA_CODE ;;
  }
  dimension: m_falha_code_d {
    type: string
    description: "Descrição breve do grupo de codes"
    sql: ${TABLE}.M_FALHA_CODE_D ;;
  }
  dimension: m_falha_qcodeg {
    type: string
    description: "Grupo de códigos"
    sql: ${TABLE}.M_FALHA_QCODEG ;;
  }
  dimension: m_falha_qcodeg_d {
    type: string
    description: "Descrição breve do grupo de codes"
    sql: ${TABLE}.M_FALHA_QCODEG_D ;;
  }
  dimension: mandt {
    type: string
    description: "Mandante"
    sql: ${TABLE}.MANDT ;;
  }
  dimension: oteil {
    type: string
    description: "Parte do objeto"
    sql: ${TABLE}.OTEIL ;;
  }
  dimension: oteil2 {
    type: string
    description: "Parte do objeto"
    sql: ${TABLE}.OTEIL2 ;;
  }
  dimension: oteil3 {
    type: string
    description: "Parte do objeto"
    sql: ${TABLE}.OTEIL3 ;;
  }
  dimension: parada {
    type: string
    description: "Código: parada"
    sql: ${TABLE}.PARADA ;;
  }
  dimension: prioridade {
    type: string
    description: "Prioridade"
    sql: ${TABLE}.PRIORIDADE ;;
  }
  dimension: qmart {
    type: string
    description: "Tipo de nota"
    sql: ${TABLE}.QMART ;;
  }
  dimension: qmnum {
    type: string
    description: "Nº da nota"
    sql: ${TABLE}.QMNUM ;;
  }
  dimension: tp_falha {
    type: string
    description: "Texto breve/denominação do objeto"
    sql: ${TABLE}.TP_FALHA ;;
  }
  dimension: txtcdfe {
    type: string
    description: "Texto breve para código problema"
    sql: ${TABLE}.TXTCDFE ;;
  }
  dimension: txtcdfe2 {
    type: string
    description: "Texto breve para código problema"
    sql: ${TABLE}.TXTCDFE2 ;;
  }
  dimension: txtcdfe3 {
    type: string
    description: "Texto breve para código problema"
    sql: ${TABLE}.TXTCDFE3 ;;
  }
  dimension: txtcdot {
    type: string
    description: "Texto breve para o código parcial do objeto"
    sql: ${TABLE}.TXTCDOT ;;
  }
  dimension: txtcdot2 {
    type: string
    description: "Texto breve para o código parcial do objeto"
    sql: ${TABLE}.TXTCDOT2 ;;
  }
  dimension: txtcdot3 {
    type: string
    description: "Texto breve para o código parcial do objeto"
    sql: ${TABLE}.TXTCDOT3 ;;
  }
  dimension: txtcdur {
    type: string
    description: "Texto breve para código de causas"
    sql: ${TABLE}.TXTCDUR ;;
  }
  dimension: txtcdur2 {
    type: string
    description: "Texto breve para código de causas"
    sql: ${TABLE}.TXTCDUR2 ;;
  }
  dimension: txtcdur3 {
    type: string
    description: "Texto breve para código de causas"
    sql: ${TABLE}.TXTCDUR3 ;;
  }
  dimension: urcod {
    type: string
    description: "Código de causa"
    sql: ${TABLE}.URCOD ;;
  }
  dimension: urcod2 {
    type: string
    description: "Código de causa"
    sql: ${TABLE}.URCOD2 ;;
  }
  dimension: urcod3 {
    type: string
    description: "Código de causa"
    sql: ${TABLE}.URCOD3 ;;
  }
  measure: count {
    type: count
  }
}
