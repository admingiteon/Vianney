
view: ventas_puntos {
  derived_table: {
    sql: select m.CODCLIENTE
            ,m.NOMBRECLIENTE
            ,m.MOBIL
            ,M.TIPO_ADI
            ,V.FECHA FECHA_VENTA
            ,V.Importe Importe_venta
            ,p.FECHA FECHA_VENTA_PUNTOS
            ,p.Importe Importe_venta_puntos from `dwh_vianney.xxvia_vw_ADIs_Mensajes` m
      LEFT JOIN xxvia_vw_ventas_a_detalle v on m.codcliente = v.codcliente
      LEFT JOIN xxvia_vw_puntos_usados p on m.codcliente = p.codcliente   limit 1000 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: codcliente {
    type: number
    sql: ${TABLE}.CODCLIENTE ;;
  }

  dimension: nombrecliente {
    type: string
    sql: ${TABLE}.NOMBRECLIENTE ;;
  }

  dimension: mobil {
    type: string
    sql: ${TABLE}.MOBIL ;;
  }

  dimension: tipo_adi {
    type: string
    sql: ${TABLE}.TIPO_ADI ;;
  }

  dimension_group: fecha_venta {
    type: time
    datatype: datetime
    sql: ${TABLE}.FECHA_VENTA ;;
  }

  dimension: importe_venta {
    type: number
    sql: ${TABLE}.Importe_venta ;;
  }

  dimension: Importe_venta_puntos {
    type: number
    sql: ${TABLE}.Importe_venta_puntos ;;
  }

  dimension_group: fecha_venta_puntos {
    type: time
    datatype: datetime
    sql: ${TABLE}.FECHA_VENTA_PUNTOS ;;
  }


  measure: Total_Importe_venta_puntos {
    type: sum
    sql: ${TABLE}.Importe_venta_puntos ;;
  }

  measure: Total_importe_venta {
    type: sum
    sql: ${TABLE}.Importe_venta ;;
  }







  set: detail {
    fields: [
        codcliente,
  nombrecliente,
  mobil,
  tipo_adi,
  fecha_venta_time,
  importe_venta,
  fecha_venta_puntos_time
    ]
  }
}
