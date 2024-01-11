---
- dashboard: indicadores_dos_compressores
  title: INDICADORES DOS COMPRESSORES
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: sFceky9dYixiGBLaF2Gp2k
  elements:
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: <center> <h3><font color="#0A1669">Confiabilidade</font></h3></center>
    row: 0
    col: 12
    width: 12
    height: 2
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: <center> <h3><font color="#0A1669">Disponibilidade</font></h3></center>
    row: 0
    col: 0
    width: 12
    height: 2
  - title: Total de Horas - Parada Não Programada
    name: Total de Horas - Parada Não Programada
    model: cortex_sap_operational
    explore: indices_acumulados
    type: looker_column
    fields: [instalacoes_abrv.concat_name, indices_acumulados.mes_ano_escrito, indices_acumulados.sum_parada_nao_programada,
      indices_acumulados.sum_parada_nao_programada_acumulada]
    filters:
      indices_acumulados.sistema: Compressor
    sorts: [instalacoes_abrv.concat_name]
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
    x_axis_zoom: true
    y_axis_zoom: true
    series_labels:
      indices_acumulados.sum_parada_nao_programada: Mensal
      indices_acumulados.sum_parada_nao_programada_acumulada: Acum. Ano
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [indices_acumulados.mes_ano_escrito]
    listen:
      Mês Ano: indices_acumulados.mes_ano_escrito
    row: 21
    col: 12
    width: 12
    height: 6
  - title: Total de Horas - Parada Programada
    name: Total de Horas - Parada Programada
    model: cortex_sap_operational
    explore: indices_acumulados
    type: looker_column
    fields: [instalacoes_abrv.concat_name, indices_acumulados.mes_ano_escrito, indices_acumulados.sum_parada_programada,
      indices_acumulados.sum_parada_programada_acumulada]
    filters:
      indices_acumulados.sistema: Compressor
    sorts: [instalacoes_abrv.concat_name]
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
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      indices_acumulados.sum_parada_programada: "#0174BE"
    series_labels:
      indices_acumulados.sum_parada_nao_programada: Mensal
      indices_acumulados.sum_parada_nao_programada_acumulada: Acum. Ano
      indices_acumulados.sum_parada_programada: Mensal
      indices_acumulados.sum_parada_programada_acumulada: Acum. Ano
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [indices_acumulados.mes_ano_escrito]
    listen:
      Mês Ano: indices_acumulados.mes_ano_escrito
    row: 21
    col: 0
    width: 12
    height: 6
  - title: Total de Horas de Paradas Programadas no Mês
    name: Total de Horas de Paradas Programadas no Mês
    model: cortex_sap_operational
    explore: indices_acumulados
    type: single_value
    fields: [indices_acumulados.instalacao, indices_acumulados.mes_ano_escrito, indices_acumulados.parada_nao_programada,
      indices_acumulados.sum_parada_programada, indices_acumulados.sum_parada_programada_acumulada]
    filters:
      indices_acumulados.sistema: Compressor
    sorts: [indices_acumulados.mes_ano_escrito desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: sum(${indices_acumulados.sum_parada_programada})
      label: Total de horas
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: total_de_horas
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
    custom_color: "#0174BE"
    single_value_title: Paradas Programadas - Mês
    value_format: "#.##"
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
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    series_labels:
      indices_acumulados.sum_parada_nao_programada: Mensal
      indices_acumulados.sum_parada_nao_programada_acumulada: Acum. Ano
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [indices_acumulados.mes_ano_escrito, indices_acumulados.parada_nao_programada,
      indices_acumulados.sum_parada_programada, indices_acumulados.sum_parada_programada_acumulada]
    listen:
      Mês Ano: indices_acumulados.mes_ano_escrito
    row: 18
    col: 0
    width: 6
    height: 3
  - title: Total de Horas de Paradas Não Programadas no Mês
    name: Total de Horas de Paradas Não Programadas no Mês
    model: cortex_sap_operational
    explore: indices_acumulados
    type: single_value
    fields: [indices_acumulados.instalacao, indices_acumulados.mes_ano_escrito, indices_acumulados.parada_nao_programada,
      indices_acumulados.sum_parada_nao_programada, indices_acumulados.sum_parada_nao_programada_acumulada]
    filters:
      indices_acumulados.sistema: Compressor
    sorts: [indices_acumulados.mes_ano_escrito desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: sum(${indices_acumulados.sum_parada_nao_programada})
      label: Total de horas
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: total_de_horas
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
    custom_color: "#0174BE"
    single_value_title: Paradas Não Programada - Mês
    value_format: "#.##"
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
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    series_labels:
      indices_acumulados.sum_parada_nao_programada: Mensal
      indices_acumulados.sum_parada_nao_programada_acumulada: Acum. Ano
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [indices_acumulados.mes_ano_escrito, indices_acumulados.parada_nao_programada,
      indices_acumulados.sum_parada_nao_programada, indices_acumulados.sum_parada_nao_programada_acumulada]
    listen:
      Mês Ano: indices_acumulados.mes_ano_escrito
    row: 18
    col: 6
    width: 6
    height: 3
  - title: Total de Horas de Paradas Não Programadas no Ano
    name: Total de Horas de Paradas Não Programadas no Ano
    model: cortex_sap_operational
    explore: indices_acumulados
    type: single_value
    fields: [indices_acumulados.instalacao, indices_acumulados.mes_ano_escrito, indices_acumulados.parada_nao_programada,
      indices_acumulados.sum_parada_nao_programada, indices_acumulados.sum_parada_nao_programada_acumulada]
    filters:
      indices_acumulados.sistema: Compressor
    sorts: [indices_acumulados.mes_ano_escrito desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: sum(${indices_acumulados.sum_parada_nao_programada_acumulada})
      label: Total de horas ano
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: total_de_horas_ano
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
    custom_color: "#12B5CB"
    single_value_title: Paradas Não Programadas - Acum. Ano
    value_format: "#.##"
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
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    series_labels:
      indices_acumulados.sum_parada_nao_programada: Mensal
      indices_acumulados.sum_parada_nao_programada_acumulada: Acum. Ano
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [indices_acumulados.mes_ano_escrito, indices_acumulados.parada_nao_programada,
      indices_acumulados.sum_parada_nao_programada, indices_acumulados.sum_parada_nao_programada_acumulada]
    listen:
      Mês Ano: indices_acumulados.mes_ano_escrito
    row: 18
    col: 18
    width: 6
    height: 3
  - title: Total de Horas de Paradas Programadas
    name: Total de Horas de Paradas Programadas
    model: cortex_sap_operational
    explore: indices_acumulados
    type: single_value
    fields: [indices_acumulados.instalacao, indices_acumulados.mes_ano_escrito, indices_acumulados.parada_nao_programada,
      indices_acumulados.sum_parada_programada, indices_acumulados.sum_parada_programada_acumulada]
    filters:
      indices_acumulados.sistema: Compressor
    sorts: [indices_acumulados.mes_ano_escrito desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: sum(${indices_acumulados.sum_parada_programada_acumulada})
      label: Total de horas ano
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: total_de_horas_ano
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
    custom_color: "#12B5CB"
    single_value_title: Paradas Programadas - Acum. Ano
    value_format: "#.##"
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
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    series_labels:
      indices_acumulados.sum_parada_nao_programada: Mensal
      indices_acumulados.sum_parada_nao_programada_acumulada: Acum. Ano
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [indices_acumulados.mes_ano_escrito, indices_acumulados.parada_nao_programada,
      indices_acumulados.sum_parada_programada, indices_acumulados.sum_parada_programada_acumulada]
    listen:
      Mês Ano: indices_acumulados.mes_ano_escrito
    row: 18
    col: 12
    width: 6
    height: 3
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: <center> <h3><font color="#0A1669">Total de Horas Paradas</font></h3></center>
    row: 16
    col: 0
    width: 24
    height: 2
  - title: Confiabilidade Mensal
    name: Confiabilidade Mensal
    model: cortex_sap_operational
    explore: indices_por_sistema
    type: single_value
    fields: [indices_por_sistema.data__month, indices_por_sistema.average_confiabilidade,
      indices_por_sistema.count, indices_por_sistema.sistema]
    filters:
      indices_por_sistema.sistema: Compressor
    sorts: [indices_por_sistema.data__month desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${indices_por_sistema.average_confiabilidade}"
      label: Confiabilidade Mensal
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: confiabilidade_mensal
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
    custom_color: "#190482"
    single_value_title: Confiabilidade Mensal
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
    hidden_fields: [indices_por_sistema.count, indices_por_sistema.average_confiabilidade]
    listen:
      Mês Ano: indices_por_sistema.mes_ano_escrito
    row: 2
    col: 12
    width: 6
    height: 3
  - title: Confiabilidade TBG
    name: Confiabilidade TBG
    model: cortex_sap_operational
    explore: indices_por_sistema
    type: looker_line
    fields: [indices_por_sistema.data__month, indices_por_sistema.sistema, indices_por_sistema.count,
      indices_por_sistema.average_confiabilidade, indices_por_sistema.average_confiabilidade_acumulada]
    filters:
      indices_por_sistema.sistema: Compressor
    sorts: [indices_por_sistema.data__month]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${indices_por_sistema.average_confiabilidade}"
      label: Confiabilidade
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: confiabilidade
      _type_hint: number
    - category: table_calculation
      expression: "${indices_por_sistema.average_confiabilidade_acumulada}"
      label: Confiabilidade Acumulada
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: confiabilidade_acumulada
      _type_hint: number
    - category: table_calculation
      expression: if(${indices_por_sistema.count} > -1, 0.96, 0)
      label: Meta
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: meta
      _type_hint: number
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
    show_null_points: true
    interpolation: linear
    x_axis_zoom: true
    y_axis_zoom: true
    series_labels:
      confiabilidade: Mensal
      confiabilidade_acumulada: Acumulado Anual
      meta: Meta >=
    custom_color_enabled: true
    custom_color: "#7752FE"
    show_single_value_title: true
    single_value_title: Acumulado no Ano
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [indices_por_sistema.count, indices_por_sistema.average_confiabilidade_acumulada,
      indices_por_sistema.sistema, indices_por_sistema.average_confiabilidade]
    hidden_pivots: {}
    listen: {}
    row: 5
    col: 12
    width: 12
    height: 5
  - title: Confiabilidade Acumulado no Ano
    name: Confiabilidade Acumulado no Ano
    model: cortex_sap_operational
    explore: indices_por_sistema
    type: single_value
    fields: [indices_por_sistema.data__month, indices_por_sistema.count, indices_por_sistema.sistema,
      indices_por_sistema.average_confiabilidade_acumulada]
    filters:
      indices_por_sistema.sistema: Compressor
    sorts: [indices_por_sistema.data__month desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${indices_por_sistema.average_confiabilidade_acumulada}"
      label: Confiabilidade Acumulada
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: confiabilidade_acumulada
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
    custom_color: "#7752FE"
    single_value_title: Confiabilidade Acumulado no Ano
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
    hidden_fields: [indices_por_sistema.count, indices_por_sistema.average_confiabilidade_acumulada]
    hidden_pivots: {}
    listen:
      Mês Ano: indices_por_sistema.mes_ano_escrito
    row: 2
    col: 18
    width: 6
    height: 3
  - title: Disponibilidade Acumulado no Ano
    name: Disponibilidade Acumulado no Ano
    model: cortex_sap_operational
    explore: indices_por_sistema
    type: single_value
    fields: [indices_por_sistema.data__month, indices_por_sistema.count, indices_por_sistema.sistema,
      indices_por_sistema.average_disponibilidade_acumulada]
    filters:
      indices_por_sistema.sistema: Compressor
    sorts: [indices_por_sistema.data__month desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${indices_por_sistema.average_disponibilidade_acumulada}"
      label: Disponibilidade Acumulada
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: disponibilidade_acumulada
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
    custom_color: "#7752FE"
    single_value_title: Disponibilidade Acumulado no Ano
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
    hidden_fields: [indices_por_sistema.count, indices_por_sistema.average_disponibilidade_acumulada]
    hidden_pivots: {}
    listen:
      Mês Ano: indices_por_sistema.mes_ano_escrito
    row: 2
    col: 6
    width: 6
    height: 3
  - title: Disponibilidade TBG
    name: Disponibilidade TBG
    model: cortex_sap_operational
    explore: indices_por_sistema
    type: looker_line
    fields: [indices_por_sistema.data__month, indices_por_sistema.average_disponibilidade,
      indices_por_sistema.average_disponibilidade_acumulada, indices_por_sistema.count]
    fill_fields: [indices_por_sistema.data__month]
    filters:
      indices_por_sistema.sistema: Compressor
    sorts: [indices_por_sistema.data__month desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${indices_por_sistema.average_disponibilidade}"
      label: Disponibilidade
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: disponibilidade
      _type_hint: number
    - category: table_calculation
      expression: "${indices_por_sistema.average_disponibilidade_acumulada}"
      label: Disponibilidade Acumulada
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: disponibilidade_acumulada
      _type_hint: number
    - category: table_calculation
      expression: if(${indices_por_sistema.count} > -1, 0.96, 0)
      label: Meta >=
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: meta
      _type_hint: number
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
    show_null_points: true
    interpolation: linear
    x_axis_zoom: true
    y_axis_zoom: true
    series_labels:
      disponibilidade: Mensal
      disponibilidade_acumulada: Acumulado Anual
    hidden_pivots: {}
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: [indices_por_sistema.average_disponibilidade, indices_por_sistema.average_disponibilidade_acumulada,
      indices_por_sistema.count]
    listen: {}
    row: 5
    col: 0
    width: 12
    height: 5
  - title: Confiabilidade Por Local Instalação
    name: Confiabilidade Por Local Instalação
    model: cortex_sap_operational
    explore: indices_por_sistema
    type: looker_column
    fields: [indices_por_sistema.data__month, indices_por_sistema.instalacao, indices_por_sistema.average_confiabilidade,
      indices_por_sistema.average_confiabilidade_acumulada, instalacoes_abrv.concat_name]
    filters:
      indices_por_sistema.sistema: Compressor
    sorts: [instalacoes_abrv.concat_name]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${indices_por_sistema.average_confiabilidade}"
      label: Mensal
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: mensal
      _type_hint: number
    - category: table_calculation
      expression: "${indices_por_sistema.average_confiabilidade_acumulada}"
      label: Acumulado Anual
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: acumulado_anual
      _type_hint: number
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
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      mensal: "#190482"
      acumulado_anual: "#7752FE"
    hidden_pivots: {}
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: [indices_por_sistema.instalacao, indices_por_sistema.data__month,
      indices_por_sistema.average_confiabilidade, indices_por_sistema.average_confiabilidade_acumulada]
    listen:
      Mês Ano: indices_por_sistema.mes_ano_escrito
    row: 10
    col: 12
    width: 12
    height: 6
  - title: Disponibilidade Mensal
    name: Disponibilidade Mensal
    model: cortex_sap_operational
    explore: indices_por_sistema
    type: single_value
    fields: [indices_por_sistema.data__month, indices_por_sistema.count, indices_por_sistema.sistema,
      indices_por_sistema.average_disponibilidade]
    filters:
      indices_por_sistema.sistema: Compressor
    sorts: [indices_por_sistema.data__month desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${indices_por_sistema.average_disponibilidade}"
      label: Disponibilidade Mensal
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: disponibilidade_mensal
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
    custom_color: "#190482"
    single_value_title: Disponibilidade Mensal
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
    hidden_fields: [indices_por_sistema.count, indices_por_sistema.average_disponibilidade]
    listen:
      Mês Ano: indices_por_sistema.mes_ano_escrito
    row: 2
    col: 0
    width: 6
    height: 3
  - title: Disponibilidade Local Instalação
    name: Disponibilidade Local Instalação
    model: cortex_sap_operational
    explore: indices_por_sistema
    type: looker_column
    fields: [indices_por_sistema.data__month, indices_por_sistema.average_disponibilidade,
      indices_por_sistema.average_disponibilidade_acumulada, indices_por_sistema.count,
      indices_por_sistema.instalacao, instalacoes_abrv.concat_name]
    filters:
      indices_por_sistema.sistema: Compressor
    sorts: [instalacoes_abrv.concat_name]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${indices_por_sistema.average_disponibilidade}"
      label: Disponibilidade
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: disponibilidade
      _type_hint: number
    - category: table_calculation
      expression: "${indices_por_sistema.average_disponibilidade_acumulada}"
      label: Disponibilidade Acumulada
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: disponibilidade_acumulada
      _type_hint: number
    - category: table_calculation
      expression: if(${indices_por_sistema.count} > -1, 0.96, 0)
      label: Meta >=
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: meta
      _type_hint: number
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
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      disponibilidade: "#190482"
      disponibilidade_acumulada: "#7752FE"
    series_labels:
      disponibilidade: Mensal
      disponibilidade_acumulada: Acumulado Anual
    show_null_points: true
    interpolation: linear
    hidden_pivots: {}
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_fields: [indices_por_sistema.average_disponibilidade, indices_por_sistema.average_disponibilidade_acumulada,
      indices_por_sistema.count, meta, indices_por_sistema.data__month, indices_por_sistema.instalacao]
    listen:
      Mês Ano: indices_por_sistema.mes_ano_escrito
    row: 10
    col: 0
    width: 12
    height: 6
  filters:
  - name: Mês Ano
    title: Mês Ano
    type: field_filter
    default_value: Nov 2023
    allow_multiple_values: true
    required: true
    ui_config:
      type: dropdown_menu
      display: inline
    model: cortex_sap_operational
    explore: indices
    listens_to_filters: []
    field: indices.mes_ano_escrito
