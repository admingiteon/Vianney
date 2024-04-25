
view: ventas_puntos_semanas {
  derived_table: {
    sql: SELECT v.CODCLIENTE
               ,v.FECHA FECHA_VENTA
               ,DATE_DIFF( CURRENT_DATE(),v.FECHA, WEEK) Semana
               ,m.NOMBRECLIENTE
               ,m.MOBIL
               ,M.TIPO_ADI
               ,V.Importe Importe_venta
               ,V.Tipo
               FROM (
                       SELECT *,ROW_NUMBER() OVER (PARTITION BY CODCLIENTE ORDER BY FECHA DESC) RN  FROM (

      SELECT CODCLIENTE,fecha,Importe,'ventas' Tipo FROM `vianneymx-eon.dwh_vianney.xxvia_vw_ventas_a_detalle`
      union all
      SELECT CODCLIENTE,fecha,importe,'Puntos' Tipo FROM `vianneymx-eon.dwh_vianney.xxvia_vw_puntos_usados`

      )
      ) v
      LEFT JOIN `dwh_vianney.xxvia_vw_ADIs_Mensajes` m  on m.codcliente = v.codcliente
      WHERE RN=1 and DATE_DIFF(v.FECHA, CURRENT_DATE(), WEEK)-DATE_DIFF(v.FECHA, CURRENT_DATE(), day)/7=0
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: codcliente {
    type: number
    sql: ${TABLE}.CODCLIENTE ;;
  }

  dimension_group: fecha_venta {
    type: time
    datatype: datetime
    sql: ${TABLE}.FECHA_VENTA ;;
  }

  dimension: semana {
    type: number
    sql: ${TABLE}.Semana ;;
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

  dimension: importe_venta {
    type: number
    sql: ${TABLE}.Importe_venta ;;
  }

  dimension: tipo {
    type: string
    sql: ${TABLE}.Tipo ;;
  }

  dimension: Telefono {
    type: string
    sql:RIGHT(${TABLE}.MOBIL,10)  ;;
    #sql: '5566532268' ;;
  }

  dimension: Val_telefono {
    type: number
    sql: case when LENGTH (${Telefono}) =10 then 1 else 0 end ;;
  }

  dimension: Val_nombre {
    type: number
    sql: case when LENGTH (${nombrecliente}) >3 then 1 else 0 end ;;
  }

  dimension: Descuentos {
    type: string
    sql: "10" ;;
  }

  dimension: 1_semana {
    type: string
    sql: "adi_sube_a_adi_tutora" ;;
  }

  dimension: 3_semana {
    type: string
    sql: "adi_sube_a_adi_tutora" ;;
  }

  dimension: 5_semana {
    type: string
    sql: "adi_sube_a_adi_tutora" ;;
  }

  dimension: 7_semana {
    type: string
    sql: "adi_sube_a_adi_tutora" ;;
  }

  dimension: 9_semana {
    type: string
    sql: "adi_sube_a_adi_tutora" ;;
  }

  dimension: 11_semana {
    type: string
    sql: "adi_sube_a_adi_tutora" ;;
  }

  dimension: 15_semana {
    type: string
    sql: "adi_sube_a_adi_tutora" ;;
  }

  dimension: 40_semana {
    type: string
    sql: "adi_sube_a_adi_tutora" ;;
  }




  set: detail {
    fields: [
      codcliente,
      fecha_venta_time,
      semana,
      nombrecliente,
      mobil,
      tipo_adi,
      importe_venta,
      tipo
    ]
  }
}
