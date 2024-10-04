- name: add_a_unique_name_1728010931
  title: Untitled Visualization
  model: vianney
  explore: ventas_puntos
  type: looker_grid
  fields: [ventas_puntos.nombrecliente, ventas_puntos.tipo_adi, ventas_puntos.Tipo_adi_trimestral,
    ventas_puntos.propuesta_clasificacion, ventas_puntos.promedio_ventas, ventas_puntos.Telefono,
    ventas_puntos.Url_logo, ventas_puntos.Cantidad, ventas_puntos.PLAN_SC]
  filters:
    ventas_puntos.Val_nombre: '1'
    ventas_puntos.Val_telefono: '1'
    ventas_puntos.tipo_adi: ADI TUTORA
    ventas_puntos.Tipo_adi_trimestral: ADI TUTORA
    ventas_puntos.cantidad_pagar: "<3000"
  sorts: [ventas_puntos.promedio_ventas desc]
  limit: 5000
  column_limit: 50
  show_view_names: false
  show_row_numbers: true
  transpose: false
  truncate_text: true
  hide_totals: false
  hide_row_totals: false
  size_to_fit: true
  table_theme: white
  limit_displayed_rows: false
  enable_conditional_formatting: false
  header_text_alignment: left
  header_font_size: '12'
  rows_font_size: '12'
  conditional_formatting_include_totals: false
  conditional_formatting_include_nulls: false
  show_sql_query_menu_options: false
  column_order: ["$$$_row_numbers_$$$", ventas_puntos.nombrecliente, ventas_puntos.Telefono,
    ventas_puntos.tipo_adi, ventas_puntos.Tipo_adi_trimestral, ventas_puntos.propuesta_clasificacion,
    ventas_puntos.promedio_ventas, ventas_puntos.Cantidad, ventas_puntos.Url_logo,
    ventas_puntos.PLAN_BT]
  show_totals: true
  show_row_totals: true
  truncate_header: false
  minimum_column_width: 75
  series_labels:
    ventas_puntos.nombrecliente: Nombre
    ventas_puntos.Url_logo: url
    ventas_puntos.Tipo_adi_trimestral: Tipo Adi ventas
    ventas_puntos.propuesta_clasificacion: Clasificacion
    ventas_puntos.promedio_ventas: Venta Promedio
    ventas_puntos.PLAN_BT: plantila
    ventas_puntos.PLAN_ST: plantilla
    ventas_puntos.PLAN_SC: plantilla
  series_cell_visualizations: {}
  header_font_color: "#FFF"
  header_background_color: "#633974"
  hidden_pivots: {}
  defaults_version: 1
