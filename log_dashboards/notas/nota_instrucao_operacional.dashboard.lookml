---
- dashboard: nota_de_instruo_operacional
  title: Nota de Instrução Operacional
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: E8z7BhVrjhK62GD3K9AR0e
  elements:
  - title: Notas de Instrução Operacional
    name: Notas de Instrução Operacional
    model: cortex_sap_operational
    explore: nota_instrucao_operacional_zspmlistnote
    type: looker_grid
    fields: [nota_instrucao_operacional_zspmlistnote.qmnum, nota_instrucao_operacional_zspmlistnote.titulo,
      nota_instrucao_operacional_zspmlistnote.tipo, nota_instrucao_operacional_zspmlistnote.qmdat_date,
      nota_instrucao_operacional_zspmlistnote.mzeit, nota_instrucao_operacional_zspmlistnote.ltrmn_date,
      nota_instrucao_operacional_zspmlistnote.txtstat]
    sorts: [nota_instrucao_operacional_zspmlistnote.qmdat_date desc]
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
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Nº da Instrução Operacional: nota_instrucao_operacional_zspmlistnote.qmnum
      Tipo: nota_instrucao_operacional_zspmlistnote.tipo
      Status: nota_instrucao_operacional_zspmlistnote.txtstat
      Data Abertura Date: nota_instrucao_operacional_zspmlistnote.qmdat_date
      Data Validade Date: nota_instrucao_operacional_zspmlistnote.ltrmn_date
    row: 6
    col: 0
    width: 24
    height: 7
  - title: Notas por Status
    name: Notas por Status
    model: cortex_sap_operational
    explore: nota_instrucao_operacional_zspmlistnote
    type: looker_pie
    fields: [nota_instrucao_operacional_zspmlistnote.txtstat, nota_instrucao_operacional_zspmlistnote.count]
    sorts: [nota_instrucao_operacional_zspmlistnote.count desc 0]
    limit: 500
    column_limit: 50
    value_labels: labels
    label_type: labPer
    inner_radius: 45
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    limit_displayed_rows: false
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
    listen:
      Nº da Instrução Operacional: nota_instrucao_operacional_zspmlistnote.qmnum
      Tipo: nota_instrucao_operacional_zspmlistnote.tipo
      Status: nota_instrucao_operacional_zspmlistnote.txtstat
      Data Abertura Date: nota_instrucao_operacional_zspmlistnote.qmdat_date
      Data Validade Date: nota_instrucao_operacional_zspmlistnote.ltrmn_date
    row: 0
    col: 0
    width: 12
    height: 6
  - title: Notas por Tipo
    name: Notas por Tipo
    model: cortex_sap_operational
    explore: nota_instrucao_operacional_zspmlistnote
    type: looker_pie
    fields: [nota_instrucao_operacional_zspmlistnote.count, nota_instrucao_operacional_zspmlistnote.tipo]
    sorts: [nota_instrucao_operacional_zspmlistnote.count desc 0]
    limit: 500
    column_limit: 50
    value_labels: labels
    label_type: labPer
    inner_radius: 45
    hidden_pivots: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    limit_displayed_rows: false
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
    listen:
      Nº da Instrução Operacional: nota_instrucao_operacional_zspmlistnote.qmnum
      Tipo: nota_instrucao_operacional_zspmlistnote.tipo
      Status: nota_instrucao_operacional_zspmlistnote.txtstat
      Data Abertura Date: nota_instrucao_operacional_zspmlistnote.qmdat_date
      Data Validade Date: nota_instrucao_operacional_zspmlistnote.ltrmn_date
    row: 0
    col: 12
    width: 12
    height: 6
  filters:
  - name: Nº da Instrução Operacional
    title: Nº da Instrução Operacional
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: cortex_sap_operational
    explore: nota_instrucao_operacional_zspmlistnote
    listens_to_filters: [Data Validade Date, Data Abertura Date]
    field: nota_instrucao_operacional_zspmlistnote.qmnum
  - name: Tipo
    title: Tipo
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: cortex_sap_operational
    explore: nota_instrucao_operacional_zspmlistnote
    listens_to_filters: [Data Validade Date, Data Abertura Date]
    field: nota_instrucao_operacional_zspmlistnote.tipo
  - name: Status
    title: Status
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: popover
    model: cortex_sap_operational
    explore: nota_instrucao_operacional_zspmlistnote
    listens_to_filters: [Data Validade Date, Data Abertura Date]
    field: nota_instrucao_operacional_zspmlistnote.txtstat
  - name: Data Validade Date
    title: Data Validade Date
    type: field_filter
    default_value: 90 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: cortex_sap_operational
    explore: nota_instrucao_operacional_zspmlistnote
    listens_to_filters: []
    field: nota_instrucao_operacional_zspmlistnote.ltrmn_date
  - name: Data Abertura Date
    title: Data Abertura Date
    type: field_filter
    default_value: 90 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: cortex_sap_operational
    explore: nota_instrucao_operacional_zspmlistnote
    listens_to_filters: []
    field: nota_instrucao_operacional_zspmlistnote.qmdat_date
