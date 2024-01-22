connection: "bigquery_vianneymx"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: vianney_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: vianney_default_datagroup

explore: xxvia_vw_puntos_disponibles {}

explore: xxvia_vw_adis_mensajes {}

explore: xxvia_vw_puntos_usados {}

explore: xxvia_vw_ventas_a_detalle {}

