view: nota_operacao_desc {
  sql_table_name: `@{GCP_PROJECT}.@{LOG_DATASET}.textos_nota_operacao_looker` ;;

  dimension: descricao {
    html: <p style="white-space:pre">{{ value }}</p> ;;
    type: string
    sql: ${TABLE}.descricao ;;
  }


  dimension: test {
    html:<ul>
      <li> nota: {{ qmnum }} </li>
      <li> desc: {{ rendered_value }} </li>
    </ul> ;;
    type: string
    sql: ${TABLE}.descricao ;;
  }


  dimension: qmnum {
    type: string
    sql: ${TABLE}.qmnum ;;
  }
  measure: count {
    type: count
  }
}
