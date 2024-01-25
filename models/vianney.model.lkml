connection: "bigquery_vianneymx"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: vianney_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: vianney_default_datagroup


explore: xxvia_vw_adis_mensajes {

  join: xxvia_vw_ventas_a_detalle {
    type: left_outer
    sql_on: ${xxvia_vw_adis_mensajes.codcliente} = ${xxvia_vw_ventas_a_detalle.codcliente} ;;
    relationship: many_to_one
  }

  join: xxvia_vw_puntos_usados {
    type: left_outer
    sql_on: ${xxvia_vw_adis_mensajes.codcliente} = ${xxvia_vw_puntos_usados.codcliente} ;;
    relationship: many_to_one
  }

  join: xxvia_vw_puntos_disponibles {
    type: left_outer
    sql_on: ${xxvia_vw_adis_mensajes.idtarjeta} = ${xxvia_vw_puntos_disponibles.idtarjeta} ;;
    relationship: many_to_one
  }


}

explore: xxvia_vw_puntos_disponibles {}

explore: xxvia_vw_puntos_usados {}

explore: xxvia_vw_ventas_a_detalle {}
