
view: ventas_puntos {
  derived_table: {
    sql:

    SELECT       m.CODCLIENTE
            ,m.NOMBRECLIENTE
            ,m.MOBIL
            ,M.TIPO_ADI
            ,V.FECHA FECHA_VENTA
            ,V.Importe Importe_venta
            ,V.Tipo FROM (
SELECT CODCLIENTE,fecha,Importe,'ventas' Tipo FROM `vianneymx-eon.dwh_vianney.xxvia_vw_ventas_a_detalle`
union all
SELECT CODCLIENTE,fecha,importe,'Puntos' Tipo FROM `vianneymx-eon.dwh_vianney.xxvia_vw_puntos_usados`) V
LEFT JOIN `dwh_vianney.xxvia_vw_ADIs_Mensajes` m  on m.codcliente = v.codcliente   ;;
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

  dimension: Tipo {
    type: string
    sql: ${TABLE}.Tipo ;;
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




  measure: Total_importe_venta {
    type: sum
    sql: ${TABLE}.Importe_venta ;;
  }


  dimension: Filtro_Mes_ventas{
    hidden: yes
    type: yesno
    sql: DATE_TRUNC(CAST(${fecha_venta_date} AS DATE),DAY) >= DATE_TRUNC(DATE_ADD(DATE_ADD(LAST_DAY(CAST(CURRENT_DATE() AS DATE)), INTERVAL 1 DAY),INTERVAL -3 MONTH), month) AND DATE_TRUNC(CAST(${fecha_venta_date} AS DATE),DAY) <= LAST_DAY(DATE_ADD(DATE_ADD(LAST_DAY(CAST(CURRENT_DATE() AS DATE)), INTERVAL 1 DAY),INTERVAL 0 MONTH))  ;;

  }



  measure: Total_importe_venta_trime {
    type: sum
    sql: ${TABLE}.Importe_venta ;;
    filters: {
      field: Filtro_Mes_ventas
      value: "yes"
    }
  }

  measure: promedio_ventas {
    type: number
    sql: ${Total_importe_venta_trime} ;;

   value_format: "0.00"

  }


  measure: Tipo_adi_trimestral {
    type: string
    sql: case when ${promedio_ventas} <=2999 then 'ADI'
              when ${promedio_ventas} >=3000  AND ${promedio_ventas} <=9999 then 'ADI TUTORA'
              when ${promedio_ventas} >=10000 then 'ADI CONSEJERA' END  ;;
  }


  measure: propuesta_clasificacion{
    type: string
    sql: case when ${tipo_adi} ="ADI" and ${Tipo_adi_trimestral}= "ADI" then "IGUAL"
              when ${tipo_adi} ="ADI" and ${Tipo_adi_trimestral}= "ADI TUTORA" then "SUBE"
              when ${tipo_adi} ="ADI" and ${Tipo_adi_trimestral}= "ADI CONSEJERA" then "SUBE"
              when ${tipo_adi} ="ADI TUTORA" and ${Tipo_adi_trimestral}= "ADI TUTORA"then "IGUAL"
              when ${tipo_adi} ="ADI TUTORA" and ${Tipo_adi_trimestral}= "ADI CONSEJERA"then "SUBE"
              when ${tipo_adi} ="ADI CONSEJERA" and ${Tipo_adi_trimestral}= "ADI CONSEJERA"then "IGUAL"
              when ${tipo_adi} ="ADI TUTORA" and ${Tipo_adi_trimestral}= "ADI" then "BAJA"
              when ${tipo_adi} ="ADI CONSEJERA" and ${Tipo_adi_trimestral}= "ADI" then "BAJA"
              when ${tipo_adi} ="ADI CONSEJERA" and ${Tipo_adi_trimestral}= "ADI TUTORA" then "BAJA"
              when ${tipo_adi} ="ADI CONSEJERA" and ${Tipo_adi_trimestral}= "ADI" then "BAJA" END  ;;
  }

  measure: cantidad_pagar{
    type: number
    sql: case when ${tipo_adi} ="ADI" and ${Tipo_adi_trimestral}= "ADI" then 2999-${promedio_ventas}
              when ${tipo_adi} ="ADI TUTORA" and ${Tipo_adi_trimestral}= "ADI TUTORA"then 10000-${promedio_ventas}
              when ${tipo_adi} ="ADI CONSEJERA" and ${Tipo_adi_trimestral}= "ADI CONSEJERA"then 3000-${promedio_ventas}
              when ${tipo_adi} ="ADI TUTORA" and ${Tipo_adi_trimestral}= "ADI" then 3000-${promedio_ventas}
              when ${tipo_adi} ="ADI CONSEJERA" and ${Tipo_adi_trimestral}= "ADI" then 10000-${promedio_ventas}
              when ${tipo_adi} ="ADI CONSEJERA" and ${Tipo_adi_trimestral}= "ADI TUTORA" then 10000-${promedio_ventas}
              when ${tipo_adi} ="ADI CONSEJERA" and ${Tipo_adi_trimestral}= "ADI" then 10000-${promedio_ventas} END  ;;

    value_format: "0.00"
  }

  measure: Cantidad {
    type: number
    sql: ${cantidad_pagar} ;;
    value_format: "0.00"

    html: <p>${{rendered_value}} MXN</p> ;;


  }



  dimension: Telefono {
    type: string
    #sql:RIGHT(${TABLE}.MOBIL,10)  ;;
    #sql: '5566532268' ;;
    sql: '4491961831' ;;
  }

  dimension: Val_telefono {
    type: number
    sql: case when LENGTH (${Telefono}) =10 then 1 else 0 end ;;
  }

  dimension: Val_nombre {
    type: number
    sql: case when LENGTH (${nombrecliente}) >3 then 1 else 0 end ;;
  }


  dimension: PLAN_ST {
    type: string
    sql: "adi_sube_a_adi_tutora" ;;
  }

  dimension: PLAN_BA {
    type: string
    sql: "adi_tutora_baja_a_adi" ;;
  }

  dimension: PLAN_SC {
    type: string
    sql: "adi_tutora_sube_a_adi_consejera" ;;
  }

  dimension: PLAN_BT {
    type: string
    sql: "adi_consejera_baja_a_adi_tutora" ;;
  }

  dimension: Url_logo {
    type: string
    sql: "https://storage.googleapis.com/imagenes-productos/Imagenes_EON/LOGO-MIVIANNEY1.png" ;;
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
