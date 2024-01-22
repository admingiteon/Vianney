view: xxvia_vw_adis_mensajes {
  sql_table_name: `dwh_vianney.xxvia_vw_ADIs_Mensajes` ;;

  dimension: codcliente {
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
  dimension: fecha_adi1 {
    type: string
    sql: ${TABLE}.FECHA_ADI1 ;;
  }
  dimension_group: fechamodificado {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.FECHAMODIFICADO ;;
  }
  dimension_group: fechanacimiento {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.FECHANACIMIENTO ;;
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
