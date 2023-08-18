- dashboard: notas_de_manutencao_look_ml
  title: Notas de Manutenção
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: VbBFajgHdq5EgoxKGEvfz7
  elements:
  - title: Possui Operação
    name: Possui Operação
    model: cortex_sap_operational
    explore: nota_manutencao_zspmlistnote
    type: looker_bar
    fields: [nota_manutencao_zspmlistnote.is_manutencao, nota_manutencao_zspmlistnote.count]
    sorts: [nota_manutencao_zspmlistnote.is_manutencao]
    limit: 500
    column_limit: 50
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
      options:
        steps: 5
    y_axes: [{label: '', orientation: bottom, series: [{axisId: nota_manutencao_zspmlistnote.count,
            id: nota_manutencao_zspmlistnote.count, name: Nota Manutencao Zspmlistnote}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Nº da nota: nota_manutencao_zspmlistnote.qmnum
      Data da nota Date: nota_manutencao_zspmlistnote.qmdat_date
      Local de instalação: nota_manutencao_zspmlistnote.tplnr
      Possui Operação: nota_manutencao_zspmlistnote.is_manutencao
      Status individual de um objeto: nota_manutencao_zspmlistnote.txtstat
    row: 0
    col: 0
    width: 8
    height: 6
  - title: Notas de Manutenção
    name: Notas de Manutenção
    model: cortex_sap_operational
    explore: nota_manutencao_zspmlistnote
    type: looker_grid
    fields: [nota_manutencao_zspmlistnote.qmnum, nota_manutencao_zspmlistnote.qmdat_date,
      nota_manutencao_zspmlistnote.mzeit, nota_manutencao_zspmlistnote.tplnr, nota_manutencao_zspmlistnote.pltxt,
      nota_manutencao_zspmlistnote.txtstat]
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
      Nº da nota: nota_manutencao_zspmlistnote.qmnum
      Data da nota Date: nota_manutencao_zspmlistnote.qmdat_date
      Local de instalação: nota_manutencao_zspmlistnote.tplnr
      Possui Operação: nota_manutencao_zspmlistnote.is_manutencao
      Status individual de um objeto: nota_manutencao_zspmlistnote.txtstat
    row: 6
    col: 0
    width: 24
    height: 9
  - title: Notas por Tipo de Ocorrência (NO)
    name: Notas por Tipo de Ocorrência (NO)
    model: cortex_sap_operational
    explore: nota_manutencao_zspmlistnote
    type: looker_pie
    fields: [nota_operacao_zspmlistnote.occur_type, nota_operacao_zspmlistnote.count]
    sorts: [nota_operacao_zspmlistnote.count desc 0]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    inner_radius: 45
    start_angle: 90
    defaults_version: 1
    listen:
      Nº da nota: nota_manutencao_zspmlistnote.qmnum
      Data da nota Date: nota_manutencao_zspmlistnote.qmdat_date
      Local de instalação: nota_manutencao_zspmlistnote.tplnr
      Possui Operação: nota_manutencao_zspmlistnote.is_manutencao
      Status individual de um objeto: nota_manutencao_zspmlistnote.txtstat
    row: 0
    col: 8
    width: 6
    height: 6
  - title: Top 5 Orgãos com  Maior Número de Notas (NO)
    name: Top 5 Orgãos com  Maior Número de Notas (NO)
    model: cortex_sap_operational
    explore: nota_manutencao_zspmlistnote
    type: looker_pie
    fields: [nota_operacao_zspmlistnote.orgname, nota_operacao_zspmlistnote.count]
    sorts: [nota_operacao_zspmlistnote.count desc 0]
    limit: 5
    column_limit: 50
    value_labels: legend
    label_type: labPer
    inner_radius: 45
    start_angle: 90
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
      Nº da nota: nota_manutencao_zspmlistnote.qmnum
      Data da nota Date: nota_manutencao_zspmlistnote.qmdat_date
      Local de instalação: nota_manutencao_zspmlistnote.tplnr
      Possui Operação: nota_manutencao_zspmlistnote.is_manutencao
      Status individual de um objeto: nota_manutencao_zspmlistnote.txtstat
    row: 0
    col: 14
    width: 5
    height: 6
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
      Nº da nota: nota_manutencao_zspmlistnote.qmnum
      Data da nota Date: nota_manutencao_zspmlistnote.qmdat_date
      Local de instalação: nota_manutencao_zspmlistnote.tplnr
      Possui Operação: nota_manutencao_zspmlistnote.is_manutencao
      Status individual de um objeto: nota_manutencao_zspmlistnote.txtstat
    row: 0
    col: 19
    width: 5
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
    field: nota_manutencao_zspmlistnote.qmnum
  - name: Data da nota Date
    title: Data da nota Date
    type: field_filter
    default_value: 2009/01/01 to 2023/08/18
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
