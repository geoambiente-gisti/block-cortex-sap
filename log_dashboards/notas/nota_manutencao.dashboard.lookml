---
- dashboard: notas_de_manuteno
  title: Notas de Manutenção
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: VbBFajgHdq5EgoxKGEvfz7
  elements:
  - title: Notas de Manutenção
    name: Notas de Manutenção
    model: cortex_sap_operational
    explore: nota_manutencao_zspmlistnote
    type: looker_grid
    fields: [nota_manutencao_zspmlistnote.n_nota_serial, nota_operacao_zspmlistnote.n_nota_serial,
      nota_manutencao_zspmlistnote.qmdat_date, nota_manutencao_zspmlistnote.mzeit,nota_manutencao_zspmlistnote.local_instalacao_descricao, nota_manutencao_zspmlistnote.sistema,
      nota_manutencao_zspmlistnote.equipamento,nota_manutencao_zspmlistnote.prioridade,nota_manutencao_zspmlistnote.qmtxt ,nota_manutencao_zspmlistnote.nome, responsavel.email
      nota_manutencao_zspmlistnote.txtstat]
    limit: 500
    column_limit: 50
    series_labels:
      nota_manutencao_zspmlistnote.qmdat_date: Data da Nota
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
    hidden_fields:
    hidden_pivots: {}
    listen:
      Nº da nota: nota_manutencao_zspmlistnote.n_nota_serial
      Data da nota Date: nota_manutencao_zspmlistnote.qmdat_date
      Local de instalação: nota_manutencao_zspmlistnote.tplnr
      Possui Operação: nota_manutencao_zspmlistnote.is_manutencao
      Status individual de um objeto: nota_manutencao_zspmlistnote.txtstat
      Responsavel: responsavel.email
    row: 12
    col: 0
    width: 24
    height: 9
  - title: Notas em Aberto
    name: Notas em Aberto
    model: cortex_sap_operational
    explore: nota_manutencao_zspmlistnote
    type: single_value
    fields: [nota_manutencao_zspmlistnote.count_open]
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
    custom_color: "#F9AB00"
    single_value_title: Notas em Aberto
    defaults_version: 1
    listen:
      Nº da nota: nota_manutencao_zspmlistnote.n_nota_serial
      Data da nota Date: nota_manutencao_zspmlistnote.qmdat_date
      Local de instalação: nota_manutencao_zspmlistnote.tplnr
      Possui Operação: nota_manutencao_zspmlistnote.is_manutencao
      Status individual de um objeto: nota_manutencao_zspmlistnote.txtstat
      Responsavel: responsavel.email
    row: 0
    col: 0
    width: 4
    height: 6
  - title: Número de Notas por Dia
    name: Número de Notas por Dia
    model: cortex_sap_operational
    explore: nota_manutencao_zspmlistnote
    type: looker_column
    fields: [nota_manutencao_zspmlistnote.count, nota_manutencao_zspmlistnote.qmdat_date]
    fill_fields: [nota_manutencao_zspmlistnote.qmdat_date]
    sorts: [nota_manutencao_zspmlistnote.qmdat_date desc]
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
    y_axes: [{label: Qtd. Notas, orientation: left, series: [{axisId: nota_manutencao_zspmlistnote.count,
            id: nota_manutencao_zspmlistnote.count, name: Nota Manutencao Zspmlistnote}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Semana da Nota
    x_axis_zoom: true
    y_axis_zoom: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Nº da nota: nota_manutencao_zspmlistnote.n_nota_serial
      Data da nota Date: nota_manutencao_zspmlistnote.qmdat_date
      Local de instalação: nota_manutencao_zspmlistnote.tplnr
      Possui Operação: nota_manutencao_zspmlistnote.is_manutencao
      Status individual de um objeto: nota_manutencao_zspmlistnote.txtstat
      Responsavel: responsavel.email
    row: 6
    col: 0
    width: 12
    height: 6
  - title: Número Notas por Mês
    name: Número Notas por Mês
    model: cortex_sap_operational
    explore: nota_manutencao_zspmlistnote
    type: looker_column
    fields: [nota_manutencao_zspmlistnote.qmdat_month, nota_manutencao_zspmlistnote.count]
    fill_fields: [nota_manutencao_zspmlistnote.qmdat_month]
    sorts: [nota_manutencao_zspmlistnote.qmdat_month desc]
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
    y_axes: [{label: Qtd. Notas, orientation: left, series: [{axisId: nota_manutencao_zspmlistnote.count,
            id: nota_manutencao_zspmlistnote.count, name: Nota Manutencao Zspmlistnote}],
        showLabels: true, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Mês da Nota
    x_axis_zoom: true
    y_axis_zoom: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Nº da nota: nota_manutencao_zspmlistnote.n_nota_serial
      Data da nota Date: nota_manutencao_zspmlistnote.qmdat_date
      Local de instalação: nota_manutencao_zspmlistnote.tplnr
      Possui Operação: nota_manutencao_zspmlistnote.is_manutencao
      Status individual de um objeto: nota_manutencao_zspmlistnote.txtstat
      Responsavel: responsavel.email
    row: 6
    col: 12
    width: 12
    height: 6
  - name: Número de Notas por Responsável
    title: Número de Notas por Responsável
    model: cortex_sap_operational
    explore: nota_manutencao_zspmlistnote
    type: looker_column
    fields: [nota_manutencao_zspmlistnote.nome, nota_manutencao_zspmlistnote.count, nota_manutencao_zspmlistnote.name]
    filters:
      nota_manutencao_zspmlistnote.n_nota_serial: ''
      nota_manutencao_zspmlistnote.qmdat_date: 90 days
      nota_manutencao_zspmlistnote.tplnr: ''
      nota_manutencao_zspmlistnote.is_manutencao: ''
      nota_manutencao_zspmlistnote.txtstat: ''
    sorts: [nota_manutencao_zspmlistnote.count desc 0]
    limit: 15
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: if(is_null(${nota_manutencao_zspmlistnote.nome}), ${nota_manutencao_zspmlistnote.name},
        ${nota_manutencao_zspmlistnote.nome})
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
    y_axes: [{label: '', orientation: left, series: [{axisId: nota_manutencao_zspmlistnote.count,
            id: nota_manutencao_zspmlistnote.count, name: Nota Manutencao Zspmlistnote,
            __FILE: cortex-sap/log_dashboards/notas/nota_manutencao.dashboard.lookml,
            __LINE_NUM: 234}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear, __FILE: cortex-sap/log_dashboards/notas/nota_manutencao.dashboard.lookml,
        __LINE_NUM: 234}]
    x_axis_zoom: true
    y_axis_zoom: true
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: [nota_manutencao_zspmlistnote.nome, nota_manutencao_zspmlistnote.name]
    row: 0
    col: 12
    width: 12
    height: 6
  - title: Número de Notas por Turno
    name: Número de Notas por Turno
    model: cortex_sap_operational
    explore: nota_manutencao_zspmlistnote
    type: looker_column
    fields: [nota_operacao_zspmlistnote.turno, nota_operacao_zspmlistnote.count]
    sorts: [nota_operacao_zspmlistnote.turno]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: nota_operacao_zspmlistnote.count,
            id: nota_operacao_zspmlistnote.count, name: Nota_manutencao}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    defaults_version: 1
    listen:
      Nº da nota: nota_manutencao_zspmlistnote.n_nota_serial
      Data da nota Date: nota_manutencao_zspmlistnote.qmdat_date
      Local de instalação: nota_manutencao_zspmlistnote.tplnr
      Possui Operação: nota_manutencao_zspmlistnote.is_manutencao
      Status individual de um objeto: nota_manutencao_zspmlistnote.txtstat
      Responsavel: responsavel.email
    row: 0
    col: 4
    width: 8
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
    explore: nota_manutencao_zspmlistnote
    listens_to_filters: [Data da nota Date]
    field: nota_manutencao_zspmlistnote.n_nota_serial
  - name: Data da nota Date
    title: Data da nota Date
    type: field_filter
    default_value: 90 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: cortex_sap_operational
    explore: nota_manutencao_zspmlistnote
    listens_to_filters: []
    field: nota_manutencao_zspmlistnote.qmdat_date
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
    explore: nota_manutencao_zspmlistnote
    listens_to_filters: [Data da nota Date]
    field: nota_manutencao_zspmlistnote.tplnr
  - name: Possui Operação
    title: Possui Operação
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: cortex_sap_operational
    explore: nota_manutencao_zspmlistnote
    listens_to_filters: [Data da nota Date]
    field: nota_manutencao_zspmlistnote.is_manutencao
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
    explore: nota_manutencao_zspmlistnote
    listens_to_filters: [Data da nota Date]
    field: nota_manutencao_zspmlistnote.txtstat
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
    explore: nota_manutencao_zspmlistnote
    Responsavel: responsavel.email
    field: responsavel.email
