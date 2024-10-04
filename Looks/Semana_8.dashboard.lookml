- name: add_a_unique_name_1728011100
  title: Untitled Visualization
  model: vianney
  explore: ventas_puntos_semanas
  type: looker_grid
  fields: [ventas_puntos_semanas.nombrecliente, ventas_puntos_semanas.Telefono, ventas_puntos_semanas.8_semana,
    ventas_puntos_semanas.url]
  filters:
    ventas_puntos_semanas.semana: '8'
    ventas_puntos_semanas.Val_telefono: '1'
  sorts: [ventas_puntos_semanas.8_semana]
  limit: 10
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
  column_order: ["$$$_row_numbers_$$$", ventas_puntos_semanas.Telefono, ventas_puntos_semanas.8_semana]
  show_totals: true
  show_row_totals: true
  truncate_header: false
  minimum_column_width: 75
  series_labels:
    ventas_puntos_semanas.8_semana: plantilla
    ventas_puntos_semanas.url: url
    ventas_puntos_semanas.nombrecliente: Nombre
  header_font_color: "#fff"
  header_background_color: "#633974"
  defaults_version: 1
