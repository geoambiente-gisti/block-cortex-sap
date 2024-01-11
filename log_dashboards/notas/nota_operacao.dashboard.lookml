---
- dashboard: notas_de_operao
  title: Notas de Operação
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: DkrsGdSDELGlcGw0FU2OKE
  elements:
  - title: Notas de Operação
    name: Notas de Operação
    model: cortex_sap_operational
    explore: nota_operacao_zspmlistnote
    type: looker_grid
    fields: [nota_operacao_zspmlistnote.qmnum, nota_manutencao_zspmlistnote.qmnum,
      nota_operacao_zspmlistnote.qmdat_date, nota_operacao_zspmlistnote.mzeit, nota_operacao_zspmlistnote.contactname,
      nota_operacao_zspmlistnote.name, nota_operacao_zspmlistnote.occur_type, nota_operacao_zspmlistnote.tplnr,
      nota_operacao_zspmlistnote.pltxt, nota_operacao_zspmlistnote.is_manutencao]
    sorts: [nota_operacao_zspmlistnote.qmdat_date desc]
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
      Tipo Ocorrência: nota_operacao_zspmlistnote.occur_type
      Contato: nota_operacao_zspmlistnote.contactname
      Nº da nota: nota_operacao_zspmlistnote.qmnum
      Possui Manutenção: nota_operacao_zspmlistnote.is_manutencao
      Status individual de um objeto: nota_operacao_zspmlistnote.txtstat
      Local de instalação: nota_operacao_zspmlistnote.local_descricao
      Data da Nota: nota_operacao_zspmlistnote.qmdat_date
    row: 12
    col: 0
    width: 24
    height: 10
  - title: NO por Tipo de Ocorrência
    name: NO por Tipo de Ocorrência
    model: cortex_sap_operational
    explore: nota_operacao_zspmlistnote
    type: looker_pie
    fields: [nota_operacao_zspmlistnote.occur_type, nota_operacao_zspmlistnote.count]
    sorts: [nota_operacao_zspmlistnote.count desc 0]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    inner_radius: 45
    start_angle: 90
    end_angle:
    advanced_vis_config: |-
      {
        chart: {},
        series: [{}]
      }
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
      Tipo Ocorrência: nota_operacao_zspmlistnote.occur_type
      Contato: nota_operacao_zspmlistnote.contactname
      Nº da nota: nota_operacao_zspmlistnote.qmnum
      Possui Manutenção: nota_operacao_zspmlistnote.is_manutencao
      Status individual de um objeto: nota_operacao_zspmlistnote.txtstat
      Local de instalação: nota_operacao_zspmlistnote.local_descricao
      Data da Nota: nota_operacao_zspmlistnote.qmdat_date
    row: 6
    col: 0
    width: 12
    height: 6
  - title: NO que Possuem Manutenção
    name: NO que Possuem Manutenção
    model: cortex_sap_operational
    explore: nota_operacao_zspmlistnote
    type: looker_bar
    fields: [nota_operacao_zspmlistnote.is_manutencao, nota_operacao_zspmlistnote.count]
    sorts: [nota_operacao_zspmlistnote.is_manutencao]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: if(${zpmtb_no_nm.num_log_nm}=${nota_manutencao_zspmlistnote.qmnum},
        "SIM", "NÃO")
      label: Possui Nota de Manutenção
      value_format:
      value_format_name:
      _kind_hint: dimension
      table_calculation: possui_nota_de_manutencao
      _type_hint: string
      is_disabled: true
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: nota_operacao_zspmlistnote.count,
            id: nota_operacao_zspmlistnote.count, name: Nota Operacao Zspmlistnote}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: false
    series_colors: {}
    show_null_points: true
    interpolation: linear
    hidden_fields: []
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    hidden_pivots: {}
    listen:
      Nº da nota: nota_operacao_zspmlistnote.qmnum
      Tipo Ocorrência: nota_operacao_zspmlistnote.occur_type
      Contato: nota_operacao_zspmlistnote.contactname
      Possui Manutenção: nota_operacao_zspmlistnote.is_manutencao
      Status individual de um objeto: nota_operacao_zspmlistnote.txtstat
      Local de instalação: nota_operacao_zspmlistnote.local_descricao
      Data da Nota: nota_operacao_zspmlistnote.qmdat_date
    row: 6
    col: 12
    width: 12
    height: 6
  - title: Número de NO por Mês
    name: Número de NO por Mês
    model: cortex_sap_operational
    explore: nota_operacao_zspmlistnote
    type: looker_column
    fields: [nota_operacao_zspmlistnote.count, nota_operacao_zspmlistnote.qmdat_month]
    fill_fields: [nota_operacao_zspmlistnote.qmdat_month]
    sorts: [nota_operacao_zspmlistnote.qmdat_month desc]
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
    y_axes: [{label: Qtd. Notas, orientation: left, series: [{axisId: nota_operacao_zspmlistnote.count,
            id: nota_operacao_zspmlistnote.count, name: Nota Operacao Zspmlistnote}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Mês da Nota
    x_axis_zoom: true
    y_axis_zoom: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Nº da nota: nota_operacao_zspmlistnote.qmnum
      Tipo Ocorrência: nota_operacao_zspmlistnote.occur_type
      Local de instalação: nota_operacao_zspmlistnote.local_descricao
      Contato: nota_operacao_zspmlistnote.contactname
      Possui Manutenção: nota_operacao_zspmlistnote.is_manutencao
      Status individual de um objeto: nota_operacao_zspmlistnote.txtstat
      Data da Nota: nota_operacao_zspmlistnote.qmdat_date
    row: 0
    col: 6
    width: 6
    height: 6
  - title: Número de NO por Dia
    name: Número de NO por Dia
    model: cortex_sap_operational
    explore: nota_operacao_zspmlistnote
    type: looker_column
    fields: [nota_operacao_zspmlistnote.qmdat_date, nota_operacao_zspmlistnote.count]
    fill_fields: [nota_operacao_zspmlistnote.qmdat_date]
    sorts: [nota_operacao_zspmlistnote.qmdat_date desc]
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
    y_axes: [{label: Qtd. Notas, orientation: left, series: [{axisId: nota_operacao_zspmlistnote.count,
            id: nota_operacao_zspmlistnote.count, name: Nota Operacao Zspmlistnote}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Dia da Nota
    x_axis_zoom: true
    y_axis_zoom: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Nº da nota: nota_operacao_zspmlistnote.qmnum
      Tipo Ocorrência: nota_operacao_zspmlistnote.occur_type
      Data da Nota: nota_operacao_zspmlistnote.qmdat_date
      Local de instalação: nota_operacao_zspmlistnote.local_descricao
      Contato: nota_operacao_zspmlistnote.contactname
      Possui Manutenção: nota_operacao_zspmlistnote.is_manutencao
      Status individual de um objeto: nota_operacao_zspmlistnote.txtstat
    row: 0
    col: 0
    width: 6
    height: 6
  - title: Número de NO por turno
    name: Número de NO por turno
    model: cortex_sap_operational
    explore: nota_operacao_zspmlistnote
    type: looker_column
    fields: [nota_operacao_zspmlistnote.turno, nota_operacao_zspmlistnote.count]
    sorts: [nota_operacao_zspmlistnote.count desc 0]
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
    y_axes: [{label: Qtd. Notas, orientation: left, series: [{axisId: nota_operacao_zspmlistnote.count,
            id: nota_operacao_zspmlistnote.count, name: Nota Operacao Zspmlistnote}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_label: Turno
    x_axis_zoom: true
    y_axis_zoom: true
    defaults_version: 1
    listen:
      Nº da nota: nota_operacao_zspmlistnote.qmnum
      Tipo Ocorrência: nota_operacao_zspmlistnote.occur_type
      Data da Nota: nota_operacao_zspmlistnote.qmdat_date
      Local de instalação: nota_operacao_zspmlistnote.local_descricao
      Contato: nota_operacao_zspmlistnote.contactname
      Possui Manutenção: nota_operacao_zspmlistnote.is_manutencao
      Status individual de um objeto: nota_operacao_zspmlistnote.txtstat
    row: 0
    col: 12
    width: 6
    height: 6
  - title: Número de NO por Responsável
    name: Número de NO por Responsável
    model: cortex_sap_operational
    explore: nota_operacao_zspmlistnote
    type: looker_column
    fields: [nota_operacao_zspmlistnote.name, nota_operacao_zspmlistnote.count]
    sorts: [nota_operacao_zspmlistnote.count desc 0]
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
            id: nota_operacao_zspmlistnote.count, name: Nota Operacao Zspmlistnote}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    x_axis_label_rotation:
    defaults_version: 1
    listen:
      Nº da nota: nota_operacao_zspmlistnote.qmnum
      Tipo Ocorrência: nota_operacao_zspmlistnote.occur_type
      Data da Nota: nota_operacao_zspmlistnote.qmdat_date
      Local de instalação: nota_operacao_zspmlistnote.local_descricao
      Contato: nota_operacao_zspmlistnote.contactname
      Possui Manutenção: nota_operacao_zspmlistnote.is_manutencao
      Status individual de um objeto: nota_operacao_zspmlistnote.txtstat
    row: 0
    col: 18
    width: 6
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
    explore: nota_operacao_zspmlistnote
    listens_to_filters: [Data da Nota]
    field: nota_operacao_zspmlistnote.qmnum
  - name: Tipo Ocorrência
    title: Tipo Ocorrência
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: cortex_sap_operational
    explore: nota_operacao_zspmlistnote
    listens_to_filters: [Data da Nota]
    field: nota_operacao_zspmlistnote.occur_type
  - name: Data da Nota
    title: Data da Nota
    type: field_filter
    default_value: 90 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: cortex_sap_operational
    explore: nota_operacao_zspmlistnote
    listens_to_filters: []
    field: nota_operacao_zspmlistnote.qmdat_date
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
    explore: nota_operacao_zspmlistnote
    listens_to_filters: [Data da Nota]
    field: nota_operacao_zspmlistnote.contactname
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
    explore: nota_operacao_zspmlistnote
    listens_to_filters: [Data da Nota]
    field: nota_operacao_zspmlistnote.local_descricao
  - name: Possui Manutenção
    title: Possui Manutenção
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: radio_buttons
      display: popover
    model: cortex_sap_operational
    explore: nota_operacao_zspmlistnote
    listens_to_filters: [Data da Nota]
    field: nota_operacao_zspmlistnote.is_manutencao
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
    explore: nota_operacao_zspmlistnote
    listens_to_filters: [Data da Nota]
    field: nota_operacao_zspmlistnote.txtstat
