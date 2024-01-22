view: xxvia_vw_puntos_disponibles {
  sql_table_name: `dwh_vianney.xxvia_vw_puntos_disponibles` ;;

  dimension: idtarjeta {
    type: number
    sql: ${TABLE}.IDTARJETA ;;
  }
  dimension: puntos {
    type: number
    sql: ${TABLE}.puntos ;;
  }
  measure: count {
    type: count
  }
}
