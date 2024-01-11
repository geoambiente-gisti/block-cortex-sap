---
- dashboard: situao_operacional
  title: SITUAÇÃO OPERACIONAL
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: qxEDTFVwUAWEN3820XQVGQ
  elements:
  - title: Situação Operacional
    name: Situação Operacional
    model: cortex_sap_operational
    explore: situacao_operacional_locals
    type: looker_grid
    fields: [situacao_operacional_locals.instalacao_concat, situacao_operacional_locals.nivel,
      situacao_operacional_locals.area_sistema_concat, situacao_operacional_locals.em_operacao_g,
      situacao_operacional_locals.em_parada_programada_g, situacao_operacional_locals.em_parada_nao_programada_g,
      situacao_operacional_locals.em_operacao, situacao_operacional_locals.em_parada_programada,
      situacao_operacional_locals.em_parada_nao_programada]
    filters:
      situacao_operacional_locals.nivel: "-0"
    sorts: [situacao_operacional_locals.instalacao_concat, situacao_operacional_locals.nivel,
      situacao_operacional_locals.area_sistema_concat, situacao_operacional_locals.em_operacao_g,
      situacao_operacional_locals.em_parada_programada_g, situacao_operacional_locals.em_parada_nao_programada_g
        desc]
    subtotals: [situacao_operacional_locals.instalacao_concat, situacao_operacional_locals.area_sistema_concat,
      situacao_operacional_locals.em_operacao_g, situacao_operacional_locals.em_parada_programada_g]
    limit: 5000
    column_limit: 50
    dynamic_fields:
    - measure: contagem_de_areasistema
      based_on: situacao_operacional_locals.instalacao_concat
      expression: ''
      label: Contagem de Área/Sistema
      type: count_distinct
      _kind_hint: measure
      _type_hint: number
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: unstyled
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
      situacao_operacional_locals.instalacao_concat: Local Instalação
      situacao_operacional_locals.area_sistema_concat: Area ou Sistema
      situacao_operacional_locals.em_parada_programada: Parada Programada
      situacao_operacional_locals.em_parada_nao_programada: Parada Não Programada
    series_column_widths:
      situacao_operacional_locals.em_operacao: 2
      situacao_operacional_locals.em_parada_programada: 2
      situacao_operacional_locals.em_parada_nao_programada: 2
    series_cell_visualizations:
      situacao_operacional_locals.em_operacao:
        is_active: true
    series_collapsed:
      situacao_operacional_locals.instalacao_concat: true
    defaults_version: 1
    hidden_fields: [situacao_operacional_locals.em_parada_nao_programada_g, situacao_operacional_locals.em_parada_programada_g,
      situacao_operacional_locals.em_operacao_g, situacao_operacional_locals.nivel]
    hidden_pivots: {}
    hidden_points_if_no:
    listen:
      Estado Operacional: situacao_operacional_locals.estado_operacional
      Tipo Estacao: situacao_operacional_locals.tipo_estacao
      Estação: situacao_operacional_locals.estacao
    row: 8
    col: 0
    width: 24
    height: 13
  - title: Sistemas Em Operação
    name: Sistemas Em Operação
    model: cortex_sap_operational
    explore: situacao_operacional_locals
    type: single_value
    fields: [situacao_operacional_locals.em_operacao_num]
    filters:
      situacao_operacional_locals.nivel: "-0"
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
    custom_color: "#7CB342"
    defaults_version: 1
    listen:
      Estado Operacional: situacao_operacional_locals.estado_operacional
      Tipo Estacao: situacao_operacional_locals.tipo_estacao
      Estação: situacao_operacional_locals.estacao
    row: 0
    col: 6
    width: 6
    height: 4
  - title: Sistemas Em Parada Programada
    name: Sistemas Em Parada Programada
    model: cortex_sap_operational
    explore: situacao_operacional_locals
    type: single_value
    fields: [situacao_operacional_locals.em_parada_programada_num]
    filters:
      situacao_operacional_locals.nivel: "-0"
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
    defaults_version: 1
    listen:
      Estado Operacional: situacao_operacional_locals.estado_operacional
      Tipo Estacao: situacao_operacional_locals.tipo_estacao
      Estação: situacao_operacional_locals.estacao
    row: 0
    col: 12
    width: 6
    height: 4
  - title: Total de Sistemas
    name: Total de Sistemas
    model: cortex_sap_operational
    explore: situacao_operacional_locals
    type: single_value
    fields: [situacao_operacional_locals.count]
    filters:
      situacao_operacional_locals.nivel: "-0"
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
    defaults_version: 1
    listen:
      Estado Operacional: situacao_operacional_locals.estado_operacional
      Tipo Estacao: situacao_operacional_locals.tipo_estacao
      Estação: situacao_operacional_locals.estacao
    row: 0
    col: 0
    width: 6
    height: 4
  - title: "% Em Parada Programada"
    name: "% Em Parada Programada"
    model: cortex_sap_operational
    explore: situacao_operacional_locals
    type: single_value
    fields: [situacao_operacional_locals.em_parada_programada_num, situacao_operacional_locals.count]
    filters:
      situacao_operacional_locals.nivel: "-0"
    sorts: [situacao_operacional_locals.em_parada_programada_num desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${situacao_operacional_locals.em_parada_programada_num} / ${situacao_operacional_locals.count}"
      label: "% Em Parada Programada"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: em_parada_programada
      _type_hint: number
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
    defaults_version: 1
    hidden_fields: [situacao_operacional_locals.em_parada_programada_num, situacao_operacional_locals.count]
    listen:
      Estado Operacional: situacao_operacional_locals.estado_operacional
      Tipo Estacao: situacao_operacional_locals.tipo_estacao
      Estação: situacao_operacional_locals.estacao
    row: 4
    col: 12
    width: 6
    height: 4
  - title: "% Em Operação"
    name: "% Em Operação"
    model: cortex_sap_operational
    explore: situacao_operacional_locals
    type: single_value
    fields: [situacao_operacional_locals.count, situacao_operacional_locals.em_operacao_num]
    filters:
      situacao_operacional_locals.nivel: ''
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${situacao_operacional_locals.em_operacao_num} / ${situacao_operacional_locals.count}"
      label: "% Sistemas Em Operação"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: sistemas_em_operacao
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#7CB342"
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
    hidden_fields: [situacao_operacional_locals.count, situacao_operacional_locals.em_operacao_num]
    listen:
      Estado Operacional: situacao_operacional_locals.estado_operacional
      Tipo Estacao: situacao_operacional_locals.tipo_estacao
      Estação: situacao_operacional_locals.estacao
    row: 4
    col: 6
    width: 6
    height: 4
  - title: Sistemas Em Parada Não Programada
    name: Sistemas Em Parada Não Programada
    model: cortex_sap_operational
    explore: situacao_operacional_locals
    type: single_value
    fields: [situacao_operacional_locals.em_parada_nao_programada_num]
    filters:
      situacao_operacional_locals.nivel: "-0"
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
    custom_color: "#EA4335"
    defaults_version: 1
    listen:
      Estado Operacional: situacao_operacional_locals.estado_operacional
      Tipo Estacao: situacao_operacional_locals.tipo_estacao
      Estação: situacao_operacional_locals.estacao
    row: 0
    col: 18
    width: 6
    height: 4
  - title: "% Em Parada Não Programada"
    name: "% Em Parada Não Programada"
    model: cortex_sap_operational
    explore: situacao_operacional_locals
    type: single_value
    fields: [situacao_operacional_locals.em_parada_nao_programada_num, situacao_operacional_locals.count]
    filters:
      situacao_operacional_locals.nivel: "-0"
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${situacao_operacional_locals.em_parada_nao_programada_num} / ${situacao_operacional_locals.count}"
      label: "% Em Parada Não Programada"
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: em_parada_nao_programada
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#EA4335"
    hidden_fields: [situacao_operacional_locals.em_parada_nao_programada_num, situacao_operacional_locals.count]
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
      Estado Operacional: situacao_operacional_locals.estado_operacional
      Tipo Estacao: situacao_operacional_locals.tipo_estacao
      Estação: situacao_operacional_locals.estacao
    row: 4
    col: 18
    width: 6
    height: 4
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |
      | Cor |            Descrição            |
      |:---:|:---|
      | <span style="display:inline-block;width:12px;height:12px;border-radius:50%;background-color:#7CB342 ;"></span> | Em Operação   |
      | <span style="display:inline-block;width:12px;height:12px;border-radius:50%;background-color:#F9AB00;"></span> | Em Parada Programada |
      | <span style="display:inline-block;width:12px;height:12px;border-radius:50%;background-color:#EA4335 ;"></span> | Parada Não Programada |
    row: 4
    col: 0
    width: 6
    height: 4
  filters:
  - name: Tipo Estacao
    title: Tipo Estacao
    type: field_filter
    default_value: Estação de Compressão
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
      options:
      - Estação de Compressão
    model: cortex_sap_operational
    explore: situacao_operacional_locals
    listens_to_filters: []
    field: situacao_operacional_locals.tipo_estacao
  - name: Estação
    title: Estação
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: cortex_sap_operational
    explore: situacao_operacional_locals
    listens_to_filters: [Tipo Estacao]
    field: situacao_operacional_locals.estacao
  - name: Estado Operacional
    title: Estado Operacional
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: cortex_sap_operational
    explore: situacao_operacional_locals
    listens_to_filters: [Tipo Estacao]
    field: situacao_operacional_locals.estado_operacional
