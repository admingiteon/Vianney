- name: add_a_unique_name_1728010516
  title: Untitled Visualization
  model: vianney
  explore: xxvia_vw_adis_mensajes
  type: looker_grid
  fields: [xxvia_vw_adis_mensajes.nombrecliente, xxvia_vw_adis_mensajes.Telefono,
    xxvia_vw_adis_mensajes.Anniversary_date, xxvia_vw_adis_mensajes.PLAN_FA, xxvia_vw_adis_mensajes.Url_FA]
  filters:
    xxvia_vw_adis_mensajes.Val_telefono: '1'
    xxvia_vw_adis_mensajes.fecha_adi1: NOT NULL
    xxvia_vw_adis_mensajes.Anniversary_date: this day
    xxvia_vw_adis_mensajes.Envio_unicos: '0'
  sorts: [xxvia_vw_adis_mensajes.nombrecliente]
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
  show_totals: true
  show_row_totals: true
  truncate_header: false
  minimum_column_width: 75
  series_labels:
    xxvia_vw_adis_mensajes.PLAN_FA: plantilla
    xxvia_vw_adis_mensajes.Url_FA: url
  header_font_color: "#fff"
  header_background_color: "#633974"
  x_axis_gridlines: false
  y_axis_gridlines: true
  show_y_axis_labels: true
  show_y_axis_ticks: true
  y_axis_tick_density: default
  y_axis_tick_density_custom: 5
  show_x_axis_label: true
  show_x_axis_ticks: true
  y_axis_scale_mode: linear
  x_axis_reversed: false
  y_axis_reversed: false
  plot_size_by_field: false
  trellis: ''
  stacking: ''
  legend_position: center
  point_style: none
  show_value_labels: false
  label_density: 25
  x_axis_scale: auto
  y_axis_combined: true
  ordering: none
  show_null_labels: false
  show_totals_labels: false
  show_silhouette: false
  totals_color: "#808080"
  defaults_version: 1
