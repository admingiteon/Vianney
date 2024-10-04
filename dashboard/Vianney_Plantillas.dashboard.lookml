---
- dashboard: vianney_plantillas
  title: Vianney Plantillas
  layout: newspaper
  preferred_viewer: dashboards-next
  load_configuration: wait
  description: ''
  preferred_slug: UZWLLaSSItCoZaL3gTu8rA
  enable_viz_full_screen: false
  elements:
  - title: Adi Aniversario vianney
    name: Adi Aniversario vianney
    model: vianney
    explore: xxvia_vw_adis_mensajes
    type: looker_grid
    fields: [xxvia_vw_adis_mensajes.nombrecliente, xxvia_vw_adis_mensajes.Telefono,
      xxvia_vw_adis_mensajes.Anniversary_date, xxvia_vw_adis_mensajes.PLAN_FA, xxvia_vw_adis_mensajes.Url_FA]
    filters:
      xxvia_vw_adis_mensajes.Val_telefono: '1'
      xxvia_vw_adis_mensajes.fecha_adi1: NOT NULL
      xxvia_vw_adis_mensajes.Anniversary_date: this day
    sorts: [xxvia_vw_adis_mensajes.nombrecliente]
    limit: 500
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
    listen: {}
    row: 2
    col: 5
    width: 19
    height: 8
  - title: Adi feliz cumpleaños
    name: Adi feliz cumpleaños
    model: vianney
    explore: xxvia_vw_adis_mensajes
    type: looker_grid
    fields: [xxvia_vw_adis_mensajes.nombrecliente, xxvia_vw_adis_mensajes.Telefono,
      xxvia_vw_adis_mensajes.Birthday_Date, xxvia_vw_adis_mensajes.PLAN_FC, xxvia_vw_adis_mensajes.Url_Fc]
    filters:
      xxvia_vw_adis_mensajes.fechanacimiento_date: NOT NULL
      xxvia_vw_adis_mensajes.Birthday_Date: this day
      xxvia_vw_adis_mensajes.Val_telefono: '1'
    sorts: [xxvia_vw_adis_mensajes.nombrecliente]
    limit: 500
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
      xxvia_vw_adis_mensajes.PLAN_FC: plantilla
      xxvia_vw_adis_mensajes.Url_Fc: url
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
    listen: {}
    row: 10
    col: 5
    width: 19
    height: 8
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<div style=\"border-radius: 5px; padding: 5px 10px; background: #633974;\
      \ height: 60px; color: red;\">\n\t<nav style=\"font-size: 18px;\">\n\t\t<img\
      \ style=\"color: #efefef; padding: 5px 15px; float: left; height: 40px;\" src=\"\
      https://wwwstatic.lookercdn.com/logos/looker_all_white.svg\"/>\n\t\t<a style=\"\
      color: #efefef; padding: 5px 15px; float: left; line-height: 40px; font-weight:\
      \ bold;\" href=\"https://vianney.cloud.looker.com/dashboards/3?A%C3%B1o=2023&Date+Month+Name=\"\
      >VIANNEY</a>\n<a style=\"color: #efefef; padding: 5px 15px; float: left; line-height:\
      \ 40px; font-weight: bold;\" href=\"https://vianney.cloud.looker.com/dashboards/4\"\
      \ >PLANTILLAS</a>\n\t\t\n\t\t\n\t</nav>\n</div>"
    row: 0
    col: 0
    width: 24
    height: 2
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <img
        src="https://storage.googleapis.com/imagenes-productos/Imagenes_EON/adi_consejera_baja_a_adi_tutora.png"
        alt=""
        width="400"
        height="341" />
    row: 18
    col: 0
    width: 5
    height: 8
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <img
        src="https://storage.googleapis.com/imagenes-productos/Imagenes_EON/adi_tutora_baja_a_adi.png"
        alt=""
        width="400"
        height="341" />
    row: 42
    col: 0
    width: 5
    height: 8
  - name: " (4)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <img
        src="https://storage.googleapis.com/imagenes-productos/Imagenes_EON/adi_aniversario_vianney.png"
        alt=""
        width="400"
        height="341" />
    row: 2
    col: 0
    width: 5
    height: 8
  - name: " (5)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <img
        src="https://storage.googleapis.com/imagenes-productos/Imagenes_EON/adi_tutora_sube_a_adi_consejera.png"
        alt=""
        width="400"
        height="341" />
    row: 26
    col: 0
    width: 5
    height: 8
  - name: " (6)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <img
        src="https://storage.googleapis.com/imagenes-productos/Imagenes_EON/adi_feliz_cumpleaos.png"
        alt=""
        width="400"
        height="341" />
    row: 10
    col: 0
    width: 5
    height: 8
  - name: " (7)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <img
        src="https://storage.googleapis.com/imagenes-productos/Imagenes_EON/adi_sube_a_adi_tutora.png"
        alt=""
        width="400"
        height="341" />
    row: 34
    col: 0
    width: 5
    height: 8
  - title: Adi consejera baja a adi tutora
    name: Adi consejera baja a adi tutora
    model: vianney
    explore: ventas_puntos
    type: looker_grid
    fields: [ventas_puntos.nombrecliente, ventas_puntos.tipo_adi, ventas_puntos.Tipo_adi_trimestral,
      ventas_puntos.propuesta_clasificacion, ventas_puntos.promedio_ventas, ventas_puntos.Telefono,
      ventas_puntos.Url_logo, ventas_puntos.PLAN_BT, ventas_puntos.Cantidad]
    filters:
      ventas_puntos.Val_nombre: '1'
      ventas_puntos.Val_telefono: '1'
      ventas_puntos.tipo_adi: ADI CONSEJERA
      ventas_puntos.Tipo_adi_trimestral: "-ADI CONSEJERA"
      ventas_puntos.cantidad_pagar: "<=1000"
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
    series_cell_visualizations: {}
    header_font_color: "#FFF"
    header_background_color: "#633974"
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 18
    col: 5
    width: 19
    height: 8
  - title: Adi sube a adi tutora
    name: Adi sube a adi tutora
    model: vianney
    explore: ventas_puntos
    type: looker_grid
    fields: [ventas_puntos.nombrecliente, ventas_puntos.tipo_adi, ventas_puntos.Tipo_adi_trimestral,
      ventas_puntos.propuesta_clasificacion, ventas_puntos.promedio_ventas, ventas_puntos.Telefono,
      ventas_puntos.Url_logo, ventas_puntos.Cantidad, ventas_puntos.PLAN_ST]
    filters:
      ventas_puntos.Val_nombre: '1'
      ventas_puntos.Val_telefono: '1'
      ventas_puntos.tipo_adi: ADI
      ventas_puntos.Tipo_adi_trimestral: ADI
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
    series_cell_visualizations: {}
    header_font_color: "#FFF"
    header_background_color: "#633974"
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 34
    col: 5
    width: 19
    height: 8
  - title: Adi tutora baja a adi
    name: Adi tutora baja a adi
    model: vianney
    explore: ventas_puntos
    type: looker_grid
    fields: [ventas_puntos.nombrecliente, ventas_puntos.tipo_adi, ventas_puntos.Tipo_adi_trimestral,
      ventas_puntos.propuesta_clasificacion, ventas_puntos.promedio_ventas, ventas_puntos.Telefono,
      ventas_puntos.Url_logo, ventas_puntos.Cantidad, ventas_puntos.PLAN_BA]
    filters:
      ventas_puntos.Val_nombre: '1'
      ventas_puntos.Val_telefono: '1'
      ventas_puntos.tipo_adi: ADI TUTORA
      ventas_puntos.Tipo_adi_trimestral: ADI
      ventas_puntos.cantidad_pagar: "<1000"
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
      ventas_puntos.PLAN_BA: plantilla
    series_cell_visualizations: {}
    header_font_color: "#FFF"
    header_background_color: "#633974"
    hidden_pivots: {}
    defaults_version: 1
    listen: {}
    row: 42
    col: 5
    width: 19
    height: 7
  - title: Adi tutora sube a adi consejera
    name: Adi tutora sube a adi consejera
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
    listen: {}
    row: 26
    col: 5
    width: 19
    height: 8
