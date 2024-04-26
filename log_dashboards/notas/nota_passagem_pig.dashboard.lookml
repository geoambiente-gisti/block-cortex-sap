---
- dashboard: notas_de_passagem_de__pig
  title: Notas de Passagem de  PIG
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: UR6phDEhM4q2TBhHoonMtS
  elements:
  - title: Histórico de Notas
    name: Histórico de Notas
    model: cortex_sap_operational
    explore: nota_pig_zspmlistnote
    type: looker_grid
    fields: [nota_pig_zspmlistnote.n_nota_serial, nota_pig_zspmlistnote.qmdat_date, nota_pig_zspmlistnote.mzeit,
       nota_pig_zspmlistnote.local_instalacao_descricao,
      nota_pig_zspmlistnote.motivo, nota_pig_zspmlistnote.tipo, nota_pig_zspmlistnote.nome]
    sorts: [nota_pig_zspmlistnote.qmdat_date desc]
    limit: 500
    series_labels:
      nota_pig_zspmlistnote.qmdat_date: Data da Nota
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
      Nº da nota: nota_pig_zspmlistnote.n_nota_serial
      Responsavel: nota_pig_zpmtb_np.responsavel
      Tipo de PIG: nota_by_motivo_n_tipo.tipo
      Motivo da Operação: nota_by_motivo_n_tipo.motivo
      Data da nota Date: nota_pig_zspmlistnote.qmdat_date
      Local Lançamento: local_instalacao.nome_pig
    row: 8
    col: 0
    width: 24
    height: 8
  - title: Notas de Passagem de PIG por Motivo
    name: Notas de Passagem de PIG por Motivo
    model: cortex_sap_operational
    explore: nota_pig_zspmlistnote
    type: looker_pie
    fields: [nota_by_motivo_n_tipo.count, nota_pig_zspmlistnote.motivo]
    sorts: [nota_by_motivo_n_tipo.count desc 0]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    inner_radius: 45
    start_angle: 90
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
      Nº da nota: nota_pig_zspmlistnote.n_nota_serial
      Data da nota Date: nota_pig_zspmlistnote.qmdat_date
    row: 0
    col: 0
    width: 8
    height: 8
  - title: Notas de Passagem de PIG por Tipo
    name: Notas de Passagem de PIG por Tipo
    model: cortex_sap_operational
    explore: nota_pig_zspmlistnote
    type: looker_pie
    fields: [nota_by_motivo_n_tipo.count, nota_pig_zspmlistnote.tipo]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    inner_radius: 45
    start_angle: 90
    defaults_version: 1
    listen:
      Nº da nota: nota_pig_zspmlistnote.n_nota_serial
      Data da nota Date: nota_pig_zspmlistnote.qmdat_date
    row: 0
    col: 8
    width: 8
    height: 8
  - title: Notas por Local de Lançamento
    name: Notas por Local de Lançamento
    model: cortex_sap_operational
    explore: nota_pig_zspmlistnote
    type: looker_column
    fields: [nota_pig_zspmlistnote.count, nota_pig_zspmlistnote.tplnr]
    sorts: [nota_pig_zspmlistnote.count desc 0]
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Qtd. de Notas, orientation: left, series: [{axisId: nota_pig_zspmlistnote.count,
            id: nota_pig_zspmlistnote.count, name: Nota Pig Zspmlistnote}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    value_labels: legend
    label_type: labPer
    inner_radius: 45
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Nº da nota: nota_pig_zspmlistnote.n_nota_serial
      Data da nota Date: nota_pig_zspmlistnote.qmdat_date
    row: 0
    col: 16
    width: 8
    height: 8
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
    explore: nota_pig_zspmlistnote
    listens_to_filters: [Data da nota Date]
    field: nota_pig_zspmlistnote.n_nota_serial
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
    explore: nota_pig_zspmlistnote
    listens_to_filters: []
    field: nota_pig_zspmlistnote.qmdat_date
  - name: Responsavel
    title: Responsavel
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: cortex_sap_operational
    explore: nota_pig_zspmlistnote
    listens_to_filters: [Data da nota Date]
    field: nota_pig_zpmtb_np.responsavel
  - name: Local Lançamento
    title: Local Lançamento
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: cortex_sap_operational
    explore: nota_pig_zspmlistnote
    listens_to_filters: [Data da nota Date]
    field: local_instalacao.nome_pig
  - name: Tipo de PIG
    title: Tipo de PIG
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: cortex_sap_operational
    explore: nota_pig_zspmlistnote
    listens_to_filters: [Data da nota Date]
    field: nota_by_motivo_n_tipo.tipo
  - name: Motivo da Operação
    title: Motivo da Operação
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: cortex_sap_operational
    explore: nota_pig_zspmlistnote
    listens_to_filters: [Data da nota Date]
    field: nota_by_motivo_n_tipo.motivo
