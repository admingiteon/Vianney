view: xxvia_vw_ventas_a_detalle {
#  sql_table_name: `dwh_vianney.xxvia_vw_ventas_a_detalle` ;;


  derived_table: {
    sql: SELECT  ROW_NUMBER() OVER() row_number,* from `dwh_vianney.xxvia_vw_ventas_a_detalle`;;
  }

  dimension: codcliente {

    type: number
    sql: ${TABLE}.CODCLIENTE ;;
  }
  dimension: codigo {

    type: string
    sql: ${TABLE}.CODIGO ;;
  }

  dimension: row_number {
    primary_key: yes
    type: number
    sql: ${TABLE}.row_number ;;
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


  dimension: Filtro_Mes_Anterior{
    hidden: yes
    type: yesno
    sql: DATE_TRUNC(CAST(${fecha_date} AS DATE),DAY) >= DATE_TRUNC(DATE_ADD(DATE_ADD(LAST_DAY(CAST(CURRENT_DATE() AS DATE)), INTERVAL 1 DAY),INTERVAL -3 MONTH), month) AND DATE_TRUNC(CAST(${fecha_date} AS DATE),DAY) <= LAST_DAY(DATE_ADD(DATE_ADD(LAST_DAY(CAST(CURRENT_DATE() AS DATE)), INTERVAL 1 DAY),INTERVAL 0 MONTH))  ;;

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

  measure: Total_ventas {
    type: sum
    sql: ${TABLE}.Importe ;;
  }

  measure: Total_ventas_trimestral {
    type: sum
    sql: ${TABLE}.Importe ;;

    filters: {
      field: Filtro_Mes_Anterior
      value: "yes"
    }
  }


  measure: count {
    type: count
  }
}
