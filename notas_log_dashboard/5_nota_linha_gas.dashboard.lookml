- dashboard: notas_de_linha_de_gas_look_ml
  title: Notas de Linha de Gás
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: BKqoZ73PCmAQIbnuec07La
  elements:
  - title: Notas de Linha de Gás
    name: Notas de Linha de Gás
    model: cortex_sap_operational
    explore: nota_linha_gas_zspmlistnote
    type: looker_grid
    fields: [nota_linha_gas_zspmlistnote.qmnum, nota_linha_gas_zspmlistnote.qmdat_date,
      nota_linha_gas_zspmlistnote.mzeit, nota_linha_gas_zspmlistnote.contactname,
      nota_linha_gas_zspmlistnote.name, nota_linha_gas_zspmlistnote.tplnr, nota_linha_gas_zspmlistnote.pltxt,
      nota_linha_gas_zspmlistnote.txtstat]
    sorts: [nota_linha_gas_zspmlistnote.qmdat_date desc]
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
    listen:
      Nº da nota: nota_linha_gas_zspmlistnote.qmnum
      Contato: nota_linha_gas_zspmlistnote.contactname
      Data Abertura Date: nota_linha_gas_zspmlistnote.qmdat_date
      Local de instalação: nota_linha_gas_zspmlistnote.tplnr
      Notificante: nota_linha_gas_zspmlistnote.name
      Status individual de um objeto: nota_linha_gas_zspmlistnote.txtstat
    row: 4
    col: 0
    width: 24
    height: 13
  - title: Sem blocos
    name: Sem blocos
    model: cortex_sap_operational
    explore: nota_linha_gas_zspmlistnote
    type: single_value
    fields: [nota_linha_gas_zspmlistnote.count_open]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#E8710A"
    single_value_title: Total de Notas Em Aberto
    defaults_version: 1
    listen:
      Data Abertura Date: nota_linha_gas_zspmlistnote.qmdat_date
      Nº da nota: nota_linha_gas_zspmlistnote.qmnum
      Contato: nota_linha_gas_zspmlistnote.contactname
      Local de instalação: nota_linha_gas_zspmlistnote.tplnr
      Notificante: nota_linha_gas_zspmlistnote.name
      Status individual de um objeto: nota_linha_gas_zspmlistnote.txtstat
    row: 0
    col: 0
    width: 4
    height: 4
  - title: Sem blocos
    name: Sem blocos (2)
    model: cortex_sap_operational
    explore: nota_linha_gas_zspmlistnote
    type: single_value
    fields: [nota_linha_gas_zspmlistnote.count_close]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Total de Notas Encerradas
    defaults_version: 1
    listen:
      Data Abertura Date: nota_linha_gas_zspmlistnote.qmdat_date
      Nº da nota: nota_linha_gas_zspmlistnote.qmnum
      Contato: nota_linha_gas_zspmlistnote.contactname
      Local de instalação: nota_linha_gas_zspmlistnote.tplnr
      Notificante: nota_linha_gas_zspmlistnote.name
      Status individual de um objeto: nota_linha_gas_zspmlistnote.txtstat
    row: 0
    col: 4
    width: 4
    height: 4
  filters:
  - name: Nº da nota
    title: Nº da nota
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: cortex_sap_operational
    explore: nota_linha_gas_zspmlistnote
    listens_to_filters: [Data Abertura Date]
    field: nota_linha_gas_zspmlistnote.qmnum
  - name: Data Abertura Date
    title: Data Abertura Date
    type: field_filter
    default_value: 2009/01/01 to 2023/08/19
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: cortex_sap_operational
    explore: nota_linha_gas_zspmlistnote
    listens_to_filters: []
    field: nota_linha_gas_zspmlistnote.qmdat_date
  - name: Notificante
    title: Notificante
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: cortex_sap_operational
    explore: nota_linha_gas_zspmlistnote
    listens_to_filters: [Data Abertura Date]
    field: nota_linha_gas_zspmlistnote.name
  - name: Contato
    title: Contato
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: cortex_sap_operational
    explore: nota_linha_gas_zspmlistnote
    listens_to_filters: [Data Abertura Date]
    field: nota_linha_gas_zspmlistnote.contactname
  - name: Local de instalação
    title: Local de instalação
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: cortex_sap_operational
    explore: nota_linha_gas_zspmlistnote
    listens_to_filters: [Data Abertura Date]
    field: nota_linha_gas_zspmlistnote.tplnr
  - name: Status individual de um objeto
    title: Status individual de um objeto
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: cortex_sap_operational
    explore: nota_linha_gas_zspmlistnote
    listens_to_filters: [Data Abertura Date]
    field: nota_linha_gas_zspmlistnote.txtstat
