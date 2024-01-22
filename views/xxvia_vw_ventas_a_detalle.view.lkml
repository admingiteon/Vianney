view: xxvia_vw_ventas_a_detalle {
  sql_table_name: `dwh_vianney.xxvia_vw_ventas_a_detalle` ;;

  dimension: codcliente {
    type: number
    sql: ${TABLE}.CODCLIENTE ;;
  }
  dimension: codigo {
    type: string
    sql: ${TABLE}.CODIGO ;;
  }
  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }
  dimension_group: fecha {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.fecha ;;
  }
  dimension: importe {
    type: number
    sql: ${TABLE}.Importe ;;
  }
  dimension: reporte_de_ventas {
    type: number
    sql: ${TABLE}.REPORTE_DE_VENTAS ;;
  }
  dimension: salesrep_id {
    type: string
    sql: ${TABLE}.SALESREP_ID ;;
  }
  dimension: total {
    type: number
    sql: ${TABLE}.TOTAL ;;
  }
  dimension: vendedor {
    type: string
    sql: ${TABLE}.VENDEDOR ;;
  }
  measure: count {
    type: count
  }
}
