view: nota_pig_zpmtb_pignotif {
  sql_table_name: `@{GCP_PROJECT}.@{LOG_DATASET}.nota_pig_zpmtb_pignotif` ;;

  dimension: bypassfactor {
    type: number
    description: "Fator de By Pass"
    sql: ${TABLE}.BYPASSFACTOR ;;
  }
  dimension: distance {
    type: number
    description: "Distância total em Km"
    sql: ${TABLE}.DISTANCE ;;
  }
  dimension: ename {
    type: string
    description: "Nome editado do empregado ou candidato"
    sql: ${TABLE}.ENAME ;;
  }
  dimension: ernam {
    type: string
    description: "Nome do responsável que criou o objeto"
    sql: ${TABLE}.ERNAM ;;
  }
  dimension: estimateddays {
    type: string
    description: "Estimativa de duração da operação (em dias)"
    sql: ${TABLE}.ESTIMATEDDAYS ;;
  }
  dimension: launchdate {
    type: string
    description: "Início da avaria (data)"
    sql: ${TABLE}.LAUNCHDATE ;;
  }
  dimension: launchlocation {
    type: string
    description: "Valor da característica"
    sql: ${TABLE}.LAUNCHLOCATION ;;
  }
  dimension: launchpressure {
    type: number
    description: "Pressão no local"
    sql: ${TABLE}.LAUNCHPRESSURE ;;
  }
  dimension: launchtime {
    type: string
    description: "Início da avaria (hora)"
    sql: ${TABLE}.LAUNCHTIME ;;
  }
  dimension: mandt {
    type: string
    description: "Mandante"
    sql: ${TABLE}.MANDT ;;
  }
  dimension: maxspeed {
    type: number
    description: "Velocidade de deslocamento"
    sql: ${TABLE}.MAXSPEED ;;
  }
  dimension: minspeed {
    type: number
    description: "Velocidade de deslocamento"
    sql: ${TABLE}.MINSPEED ;;
  }
  dimension: modif {
    type: string
    description: "PM - Nota pode ser modificada?"
    sql: ${TABLE}.MODIF ;;
  }
  dimension: pigtype {
    type: string
    description: "Tipo de PIG"
    sql: ${TABLE}.PIGTYPE ;;
  }
  dimension: reason {
    type: string
    description: "Parte do objeto"
    sql: ${TABLE}.REASON ;;
  }
  dimension: reasongrp {
    type: string
    description: "Grupo de códigos"
    sql: ${TABLE}.REASONGRP ;;
  }
  dimension: receivelocation {
    type: string
    description: "Valor da característica"
    sql: ${TABLE}.RECEIVELOCATION ;;
  }
  dimension: receivepressure {
    type: number
    description: "Pressão no local"
    sql: ${TABLE}.RECEIVEPRESSURE ;;
  }
  dimension: txtstat {
    type: string
    description: "Status individual de um objeto"
    sql: ${TABLE}.TXTSTAT ;;
  }
  measure: count {
    type: count
    drill_fields: [ename]
  }
}
