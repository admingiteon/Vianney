
view: ventas_puntos_semanas {
  derived_table: {
    sql:


    WITH ventas_y_puntos AS (
    SELECT
        CODCLIENTE,
        FECHA,
        IMPORTE,
        'ventas' AS TIPO
    FROM `vianneymx-eon.dwh_vianney.xxvia_vw_ventas_a_detalle`

    UNION ALL

    SELECT
        CODCLIENTE,
        FECHA,
        IMPORTE,
        'puntos' AS TIPO
    FROM `vianneymx-eon.dwh_vianney.xxvia_vw_puntos_usados`
),
clientes_con_venta_reciente AS (
    SELECT
        *,
        ROW_NUMBER() OVER (PARTITION BY CODCLIENTE ORDER BY FECHA DESC) AS RN
    FROM ventas_y_puntos
)

SELECT
    v.CODCLIENTE,
    v.FECHA AS FECHA_VENTA,
    DATE_DIFF(CURRENT_DATE(), v.FECHA, WEEK) AS SEMANA,
    m.NOMBRECLIENTE,
    m.MOBIL,
    m.TIPO_ADI,
    v.IMPORTE AS IMPORTE_VENTA,
    v.TIPO
FROM clientes_con_venta_reciente v
--Obtencion de Numeros
LEFT JOIN `dwh_vianney.xxvia_vw_ADIs_Mensajes` m ON m.CODCLIENTE = v.CODCLIENTE
-- tabla Baja de telefonos
LEFT JOIN `vianneymx-eon.dwh_vianney.baja_numeros` b ON RIGHT(REGEXP_REPLACE(m.MOBIL, r'\s+', ''), 10) = b.NUMERO
WHERE
    v.RN = 1
    AND DATE_DIFF(v.FECHA, CURRENT_DATE(), WEEK)-DATE_DIFF(v.FECHA, CURRENT_DATE(), day)/7=0 -- Solo ventas de la última semana
    AND b.NUMERO IS NULL
    AND LENGTH(RIGHT(REGEXP_REPLACE(m.MOBIL, r'\s+', ''), 10)) = 10 ;;
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

  dimension: url {
    type: string
    sql: "" ;;
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
    #sql: '4491961831' ;;
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


  dimension: 8_semana {
    type: string
    sql: "mas_negocio_adis_sem8" ;;
  }

  dimension: 12_semana {
    type: string
    sql: "mas_negocio_adis_sem12" ;;
  }

  dimension: 16_semana {
    type: string
    sql: "mas_negocio_adis_16" ;;
  }

  dimension: 38_semana {
    type: string
    sql: "mas_negocio_adis_38" ;;
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
