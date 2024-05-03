---
- dashboard: notas_de_linha_de_gs
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
    fields: [nota_linha_gas_zspmlistnote.n_nota_serial, nota_linha_gas_zspmlistnote.qmdat_date,
      nota_linha_gas_zspmlistnote.mzeit, nota_linha_gas_zspmlistnote.contactname,
      nota_linha_gas_zspmlistnote.name, nota_linha_gas_zspmlistnote.tplnr, nota_linha_gas_zspmlistnote.pltxt, responsavel.email,
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
      Nº da nota: nota_linha_gas_zspmlistnote.n_nota_serial
      Contato: nota_linha_gas_zspmlistnote.contactname
      Data Abertura Date: nota_linha_gas_zspmlistnote.qmdat_date
      Notificante: nota_linha_gas_zspmlistnote.name
      Local da Ocorrência: nota_linha_gas_zspmlistnote.tplnr
      Status individual de um objeto: nota_linha_gas_zspmlistnote.txtstat
      Responsavel: responsavel.email
    row: 12
    col: 0
    width: 24
    height: 13
  - title: Número de Notas por Dia
    name: Número de Notas por Dia
    model: cortex_sap_operational
    explore: nota_linha_gas_zspmlistnote
    type: looker_column
    fields: [nota_linha_gas_zspmlistnote.qmdat_date, nota_linha_gas_zspmlistnote.count]
    fill_fields: [nota_linha_gas_zspmlistnote.qmdat_date]
    sorts: [nota_linha_gas_zspmlistnote.qmdat_date desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    y_axes: [{label: Qtd. Notas, orientation: left, series: [{axisId: nota_linha_gas_zspmlistnote.count,
            id: nota_linha_gas_zspmlistnote.count, name: Nota Linha Gas Zspmlistnote}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Dia da Nota
    x_axis_zoom: true
    y_axis_zoom: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Data Abertura Date: nota_linha_gas_zspmlistnote.qmdat_date
      Nº da nota: nota_linha_gas_zspmlistnote.n_nota_serial
      Contato: nota_linha_gas_zspmlistnote.contactname
      Local da Ocorrência: nota_linha_gas_zspmlistnote.tplnr
      Notificante: nota_linha_gas_zspmlistnote.name
      Status individual de um objeto: nota_linha_gas_zspmlistnote.txtstat
      Responsavel: responsavel.email
    row: 0
    col: 0
    width: 12
    height: 6
  - title: Número de Notas por Mês
    name: Número de Notas por Mês
    model: cortex_sap_operational
    explore: nota_linha_gas_zspmlistnote
    type: looker_column
    fields: [nota_linha_gas_zspmlistnote.qmdat_month, nota_linha_gas_zspmlistnote.count]
    fill_fields: [nota_linha_gas_zspmlistnote.qmdat_month]
    sorts: [nota_linha_gas_zspmlistnote.qmdat_month desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    y_axes: [{label: Qtd. Notas, orientation: left, series: [{axisId: nota_linha_gas_zspmlistnote.count,
            id: nota_linha_gas_zspmlistnote.count, name: Nota Linha Gas Zspmlistnote}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Mês da Nota
    x_axis_zoom: true
    y_axis_zoom: true
    defaults_version: 1
    listen:
      Data Abertura Date: nota_linha_gas_zspmlistnote.qmdat_date
      Nº da nota: nota_linha_gas_zspmlistnote.n_nota_serial
      Contato: nota_linha_gas_zspmlistnote.contactname
      Local da Ocorrência: nota_linha_gas_zspmlistnote.tplnr
      Notificante: nota_linha_gas_zspmlistnote.name
      Status individual de um objeto: nota_linha_gas_zspmlistnote.txtstat
      Responsavel: responsavel.email
    row: 6
    col: 12
    width: 12
    height: 6
  - title: Número de Notas por Turno
    name: Número de Notas por Turno
    model: cortex_sap_operational
    explore: nota_linha_gas_zspmlistnote
    type: looker_column
    fields: [nota_linha_gas_zspmlistnote.turno, nota_linha_gas_zspmlistnote.count]
    sorts: [nota_linha_gas_zspmlistnote.turno]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    y_axes: [{label: Qtd. Notas, orientation: left, series: [{axisId: nota_linha_gas_zspmlistnote.count,
            id: nota_linha_gas_zspmlistnote.count, name: Nota Linha Gas Zspmlistnote}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    defaults_version: 1
    listen:
      Data Abertura Date: nota_linha_gas_zspmlistnote.qmdat_date
      Nº da nota: nota_linha_gas_zspmlistnote.n_nota_serial
      Contato: nota_linha_gas_zspmlistnote.contactname
      Local da Ocorrência: nota_linha_gas_zspmlistnote.tplnr
      Notificante: nota_linha_gas_zspmlistnote.name
      Status individual de um objeto: nota_linha_gas_zspmlistnote.txtstat
      Responsavel: responsavel.email
    row: 6
    col: 0
    width: 12
    height: 6
  - name: Notas por Responsável
    title: Notas por Responsável
    model: cortex_sap_operational
    explore: nota_linha_gas_zspmlistnote
    type: looker_column
    fields: [nota_linha_gas_zspmlistnote.count, responsavel.nome, nota_linha_gas_zspmlistnote.responsavel]
    filters:
      nota_linha_gas_zspmlistnote.qmdat_date: 90 days
      nota_linha_gas_zspmlistnote.n_nota_serial: ''
      nota_linha_gas_zspmlistnote.contactname: ''
      nota_linha_gas_zspmlistnote.tplnr: ''
      nota_linha_gas_zspmlistnote.name: ''
      nota_linha_gas_zspmlistnote.txtstat: ''
    sorts: [nota_linha_gas_zspmlistnote.count desc 0]
    limit: 10
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: if(is_null(${responsavel.nome}), ${nota_linha_gas_zspmlistnote.responsavel},
        ${responsavel.nome})
      label: Responsavel
      value_format:
      value_format_name:
      _kind_hint: dimension
      table_calculation: responsavel
      _type_hint: string
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    y_axes: [{label: '', orientation: left, series: [{axisId: nota_linha_gas_zspmlistnote.count,
            id: nota_linha_gas_zspmlistnote.count, name: Nota Linha Gas Zspmlistnote,
            __FILE: cortex-sap/log_dashboards/notas/nota_linha_gas.dashboard.lookml,
            __LINE_NUM: 277}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear, __FILE: cortex-sap/log_dashboards/notas/nota_linha_gas.dashboard.lookml,
        __LINE_NUM: 277}]
    x_axis_zoom: true
    y_axis_zoom: true
    defaults_version: 1
    hidden_fields: [responsavel.nome, nota_linha_gas_zspmlistnote.responsavel]
    row: 0
    col: 12
    width: 12
    height: 6
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
    field: nota_linha_gas_zspmlistnote.n_nota_serial
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
  - name: Local da Ocorrência
    title: Local da Ocorrência
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
      type: checkboxes
      display: popover
    model: cortex_sap_operational
    explore: nota_linha_gas_zspmlistnote
    listens_to_filters: []
    field: nota_linha_gas_zspmlistnote.txtstat

  - name: Responsavel
    title: Responsavel
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: cortex_sap_operational
    explore: nota_linha_gas_zspmlistnote
    Responsavel: responsavel.email
    field: responsavel.email
