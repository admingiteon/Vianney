view: xxvia_vw_adis_mensajes {
  sql_table_name: `dwh_vianney.xxvia_vw_ADIs_Mensajes` ;;

  dimension: codcliente {
    primary_key: yes
    type: number
    sql: ${TABLE}.CODCLIENTE ;;
  }
  dimension: codpostal {
    type: string
    sql: ${TABLE}.CODPOSTAL ;;
  }
  dimension: descatalogado {
    type: string
    sql: ${TABLE}.DESCATALOGADO ;;
  }
  dimension: e_mail {
    type: string
    sql: ${TABLE}.E_MAIL ;;
  }

  dimension_group: fechamodificado {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.FECHAMODIFICADO ;;
  }


  dimension: Telefono {
    type: string
    sql:RIGHT(${TABLE}.MOBIL,10)  ;;
    # sql: 'NULL' ;;
  }

  dimension: Val_telefono {
    type: number
    sql: case when LENGTH (${Telefono}) =10 then 1 else 0 end ;;
  }

  dimension: Val_nombre {
    type: number
    sql: case when LENGTH (${nombrecliente}) >3 then 1 else 0 end ;;
  }







  #adi_feliz_cumpleaos #############################################################################################

  dimension_group: fechanacimiento {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.FECHANACIMIENTO ;;
  }

  dimension: dif_year {
    type: number
    sql: DATE_DIFF( ${TABLE}.FECHANACIMIENTO, CURRENT_DATE, year) ;;
  }

  dimension: Birthday_Date {
    type: date
    sql:  CAST(DATE_ADD( ${TABLE}.FECHANACIMIENTO, INTERVAL ${dif_year}*-1 year) AS TIMESTAMP)    ;;
  }


  dimension: PLAN_FC {
    type: string
    sql: "adi_feliz_cumpleaos" ;;
  }

  dimension: Url_Fc {
    type: string
    sql: "https://storage.googleapis.com/imagenes-productos/Imagenes_EON/ADIcumplea%C3%B1os-100.jpg" ;;
  }



  dimension_group: Fecha_ingreso {
    label: "Fecha ingreso"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      month_name,
      year
    ]
    sql: CAST(concat(SUBSTRING(${TABLE}.FECHA_ADI1,7,4),'-', SUBSTRING(${TABLE}.FECHA_ADI1,1,2),'-',SUBSTRING(${TABLE}.FECHA_ADI1,4,2))  AS TIMESTAMP) ;;
  }

  #####################################################################################################################

  #adi_aniversario_vianney###########################################################################################

  dimension: fecha_adi1 {
    type: date
    sql: concat(SUBSTRING(${TABLE}.FECHA_ADI1,7,4),'-', SUBSTRING(${TABLE}.FECHA_ADI1,1,2),'-',SUBSTRING(${TABLE}.FECHA_ADI1,4,2)) ;;
  }


  dimension: dif_year_aniversario {
    type: number
    sql: DATE_DIFF( ${fecha_adi1}, CURRENT_DATE, year) ;;
  }

  dimension: Anniversary_date {
    type: date
    sql:  CAST(DATE_ADD( ${fecha_adi1}, INTERVAL ${dif_year_aniversario}*-1 year) AS TIMESTAMP)    ;;
  }


  dimension: PLAN_FA {
    type: string
    sql: "adi_aniversario_vianney" ;;
  }

  dimension: Url_FA {
    type: string
    sql: "https://storage.googleapis.com/imagenes-productos/Imagenes_EON/ADIaniversario-100.jpg" ;;
  }

   #####################################################################################################################


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


  dimension: compra {
    type: string
    sql: "$199MXN" ;;
  }


  dimension: idtarjeta {
    type: number
    sql: ${TABLE}.IDTARJETA ;;
  }
  dimension: mobil {
    type: string
    sql: ${TABLE}.MOBIL ;;
  }
  dimension: nombrecliente {
    label: "Nombre"
    type: string
    sql: ${TABLE}.NOMBRECLIENTE ;;
  }
  dimension: poblacion {
    type: string
    sql: ${TABLE}.POBLACION ;;
  }
  dimension: provincia {
    type: string
    sql: ${TABLE}.PROVINCIA ;;
  }
  dimension: region {
    type: string
    sql: ${TABLE}.REGION ;;
  }
  dimension: tipo {
    type: string
    sql: ${TABLE}.Tipo ;;
  }
  dimension: tipo_adi {
    type: string
    sql: ${TABLE}.Tipo_ADI ;;
  }
  dimension: vendedor {
    type: string
    sql: ${TABLE}.vendedor ;;
  }
  dimension: zona {
    type: string
    sql: ${TABLE}.ZONA ;;
  }
  measure: count {
    type: count
  }
}
