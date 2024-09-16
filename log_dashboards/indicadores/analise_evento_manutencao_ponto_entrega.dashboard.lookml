---
- dashboard: anlise_de_eventos_de_manuteno__ponto_de_entrega
  title: ANÁLISE DE EVENTOS DE MANUTENÇÃO - PONTO DE ENTREGA
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: VtKSpBvcCS3luTQNWtXXMI
  elements:
  - title: Total de Eventos no Mês
    name: Total de Eventos no Mês
    model: cortex_sap_operational
    explore: analise_eventos
    type: single_value
    fields: [nota_manutencao_zspmlistnote.count]
    filters: {}
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
    single_value_title: Total de Eventos no Mês
    defaults_version: 1
    listen:
      Ponto de Entrega: instalacoes_abrv.concat_name
      Ano: nota_manutencao_zspmlistnote.ano_nota
      Mês: nota_manutencao_zspmlistnote.mes_nota
      Tipo Instalação: estacao_nome.pe_ecomp
    row: 0
    col: 0
    width: 8
    height: 6
  - title: Total de eventos - Mensal
    name: Total de eventos - Mensal
    model: cortex_sap_operational
    explore: analise_eventos
    type: looker_line
    fields: [nota_manutencao_zspmlistnote.qmdat_month, nota_manutencao_zspmlistnote.count]
    fill_fields: [nota_manutencao_zspmlistnote.qmdat_month]
    filters:
      nota_manutencao_zspmlistnote.qmdat_month: 365 days
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: nota_manutencao_zspmlistnote.count,
            id: nota_manutencao_zspmlistnote.count, name: Nota Manutencao Zspmlistnote}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    defaults_version: 1
    listen:
      Tipo Instalação: estacao_nome.pe_ecomp
    row: 6
    col: 0
    width: 12
    height: 6
  - title: Média anual de eventos
    name: Média anual de eventos
    model: cortex_sap_operational
    explore: analise_eventos
    type: looker_column
    fields: [nota_manutencao_zspmlistnote.count, local_instalacao.tipo_instalacao,
      nota_manutencao_zspmlistnote.qmdat_year]
    pivots: [local_instalacao.tipo_instalacao]
    fill_fields: [nota_manutencao_zspmlistnote.qmdat_year]
    filters:
      nota_manutencao_zspmlistnote.qmdat_year: 5 years
    sorts: [local_instalacao.tipo_instalacao, nota_manutencao_zspmlistnote.qmdat_year]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: pivot_row(${nota_manutencao_zspmlistnote.count})
      label: pivot
      value_format:
      value_format_name:
      _kind_hint: supermeasure
      table_calculation: pivot
      _type_hint: number_list
    - category: table_calculation
      expression: mean(pivot_row(${nota_manutencao_zspmlistnote.count}))
      label: Media Anual
      value_format:
      value_format_name:
      _kind_hint: supermeasure
      table_calculation: media_anual
      _type_hint: number
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
    y_axes: [{label: '', orientation: left, series: [{axisId: media_anual, id: media_anual,
            name: Media Anual}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_pivots: {}
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_fields: [nota_manutencao_zspmlistnote.count, pivot]
    listen:
      Tipo Instalação: estacao_nome.pe_ecomp
    row: 6
    col: 12
    width: 12
    height: 6
  - title: Total de Eventos no Ano
    name: Total de Eventos no Ano
    model: cortex_sap_operational
    explore: analise_eventos
    type: single_value
    fields: [nota_manutencao_zspmlistnote.count]
    filters: {}
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
    single_value_title: Total de Eventos no Ano
    defaults_version: 1
    listen:
      Ponto de Entrega: instalacoes_abrv.concat_name
      Ano: nota_manutencao_zspmlistnote.ano_nota
      Tipo Instalação: estacao_nome.pe_ecomp
    row: 0
    col: 8
    width: 8
    height: 6
  - name: Histórico por tipo
    title: Histórico por tipo
    model: cortex_sap_operational
    explore: analise_eventos
    type: looker_column
    fields: [nota_manutencao_zspmlistnote.count, nota_manutencao_zspmlistnote.area_sistema_3,
      nota_manutencao_zspmlistnote.qmdat_month]
    pivots: [nota_manutencao_zspmlistnote.area_sistema_3]
    fill_fields: [nota_manutencao_zspmlistnote.qmdat_month]
    filters:
      estacao_nome.pe_ecomp: Ponto de Entrega

    sorts: [nota_manutencao_zspmlistnote.area_sistema_3, nota_manutencao_zspmlistnote.qmdat_month
        desc]
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
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
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
            id: Entrada e Saída do Ponto de Entrega - nota_manutencao_zspmlistnote.count,
            name: Entrada e Saída do Ponto de Entrega}, {axisId: nota_manutencao_zspmlistnote.count,
            id: Outros - nota_manutencao_zspmlistnote.count, name: Outros}, {axisId: nota_manutencao_zspmlistnote.count,
            id: Ponto de Entrega - nota_manutencao_zspmlistnote.count, name: Ponto de
              Entrega}, {axisId: nota_manutencao_zspmlistnote.count, id: Sistema Auxiliares
              - nota_manutencao_zspmlistnote.count, name: Sistema Auxiliares}, {axisId: nota_manutencao_zspmlistnote.count,
            id: Sistema de Automação e Controle - nota_manutencao_zspmlistnote.count,
            name: Sistema de Automação e Controle}, {axisId: nota_manutencao_zspmlistnote.count,
            id: Sistema de Filtragem de Gás - nota_manutencao_zspmlistnote.count, name: Sistema
              de Filtragem de Gás}, {axisId: nota_manutencao_zspmlistnote.count, id: Sistema
              de Medição de Gás para CDL - nota_manutencao_zspmlistnote.count, name: Sistema
              de Medição de Gás para CDL}, {axisId: nota_manutencao_zspmlistnote.count,
            id: Sistema de Redução de Gás - nota_manutencao_zspmlistnote.count, name: Sistema
              de Redução de Gás}, {axisId: nota_manutencao_zspmlistnote.count, id: Sistema
              Utilidades - nota_manutencao_zspmlistnote.count, name: Sistema Utilidades}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_pivots: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Ano: nota_manutencao_zspmlistnote.ano_nota
      Mês: nota_manutencao_zspmlistnote.mes_nota
      Tipo Instalação: estacao_nome.pe_ecomp
    row: 12
    col: 12
    width: 12
    height: 8
  - name: Total de Eventos Por Tipo No Ano
    title: Total de Eventos Por Tipo No Ano
    model: cortex_sap_operational
    explore: analise_eventos
    type: looker_column
    fields: [nota_manutencao_zspmlistnote.count, nota_manutencao_zspmlistnote.area_sistema_3]
    pivots: [nota_manutencao_zspmlistnote.area_sistema_3]
    filters:
      estacao_nome.pe_ecomp: Ponto de Entrega
    sorts: [nota_manutencao_zspmlistnote.area_sistema_3]
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
    show_x_axis_ticks: false
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
            id: Entrada e Saída do Ponto de Entrega - nota_manutencao_zspmlistnote.count,
            name: Entrada e Saída do Ponto de Entrega}, {axisId: nota_manutencao_zspmlistnote.count,
            id: Outros - nota_manutencao_zspmlistnote.count, name: Outros}, {axisId: nota_manutencao_zspmlistnote.count,
            id: Ponto de Entrega - nota_manutencao_zspmlistnote.count, name: Ponto de
              Entrega}, {axisId: nota_manutencao_zspmlistnote.count, id: Sistema Auxiliares
              - nota_manutencao_zspmlistnote.count, name: Sistema Auxiliares}, {axisId: nota_manutencao_zspmlistnote.count,
            id: Sistema de Automação e Controle - nota_manutencao_zspmlistnote.count,
            name: Sistema de Automação e Controle}, {axisId: nota_manutencao_zspmlistnote.count,
            id: Sistema de Filtragem de Gás - nota_manutencao_zspmlistnote.count, name: Sistema
              de Filtragem de Gás}, {axisId: nota_manutencao_zspmlistnote.count, id: Sistema
              de Medição de Gás para CDL - nota_manutencao_zspmlistnote.count, name: Sistema
              de Medição de Gás para CDL}, {axisId: nota_manutencao_zspmlistnote.count,
            id: Sistema de Redução de Gás - nota_manutencao_zspmlistnote.count, name: Sistema
              de Redução de Gás}, {axisId: nota_manutencao_zspmlistnote.count, id: Sistema
              Utilidades - nota_manutencao_zspmlistnote.count, name: Sistema Utilidades}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_pivots: {}
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Ano: nota_manutencao_zspmlistnote.ano_nota
      Tipo Instalação: estacao_nome.pe_ecomp
    row: 12
    col: 0
    width: 12
    height: 8
  - title: Eventos no ano por estação
    name: Eventos no ano por estação
    model: cortex_sap_operational
    explore: analise_eventos
    type: looker_column
    fields: [instalacoes_abrv.concat_name, nota_manutencao_zspmlistnote.ano_nota,
      nota_manutencao_zspmlistnote.count]
    filters:
      instalacoes_abrv.concat_name: "-NULL"
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
    y_axes: [{label: '', orientation: left, series: [{axisId: nota_manutencao_zspmlistnote.count,
            id: nota_manutencao_zspmlistnote.count, name: Nota Manutencao Zspmlistnote}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    defaults_version: 1
    hidden_fields: [nota_manutencao_zspmlistnote.ano_nota]
    listen:
      Ano: nota_manutencao_zspmlistnote.ano_nota
      Tipo Instalação: estacao_nome.pe_ecomp
    row: 20
    col: 0
    width: 24
    height: 7
  - title: Comparativo Mensal vs Anual de Eventos
    name: Comparativo Mensal vs Anual de Eventos
    model: cortex_sap_operational
    explore: contagem_manutencao
    type: single_value
    fields: [contagem_manutencao.ano, contagem_manutencao.instalacao, contagem_manutencao.sum_ponto_entrega_mes,
      contagem_manutencao.ponto_entrega]
    sorts: [contagem_manutencao.instalacao desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: if(${contagem_manutencao.ponto_entrega}!= 0,${contagem_manutencao.sum_ponto_entrega_mes}
        / ${contagem_manutencao.ponto_entrega}, 0)
      label: razao
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: razao
      _type_hint: number
    - category: table_calculation
      expression: "if(sum(${razao}) = count(${contagem_manutencao.sum_ponto_entrega_mes})\
        \ * 1, \n  1.0,\n  sum(${contagem_manutencao.sum_ponto_entrega_mes})/ sum(${contagem_manutencao.ponto_entrega}))"
      label: razao_final
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: razao_final
      _type_hint: number
    - category: table_calculation
      expression: sum(${contagem_manutencao.estacao_compressao})
      label: t
      value_format:
      value_format_name:
      _kind_hint: dimension
      table_calculation: t
      _type_hint: number
      is_disabled: true
    - category: table_calculation
      expression: sum(${contagem_manutencao.sum_total_mes})
      label: t2
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: t2
      _type_hint: number
      is_disabled: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Comparativo Mensal vs. Anual de Eventos
    hidden_pivots: {}
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    hidden_fields: [contagem_manutencao.ano, contagem_manutencao.instalacao, razao,
      contagem_manutencao.sum_ponto_entrega_mes, contagem_manutencao.ponto_entrega]
    listen:
      Ponto de Entrega: instalacoes_abrv.concat_name
      Ano: contagem_manutencao.ano
      Mês: contagem_manutencao.mes
    row: 0
    col: 16
    width: 8
    height: 6
  filters:
  - name: Tipo Instalação
    title: Tipo Instalação
    type: field_filter
    default_value: Ponto de Entrega
    allow_multiple_values: true
    required: true
    ui_config:
      type: button_toggles
      display: inline
      options:
      - Ponto de Entrega
    model: cortex_sap_operational
    explore: analise_eventos
    listens_to_filters: []
    field: estacao_nome.pe_ecomp
  - name: Mês
    title: Mês
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: cortex_sap_operational
    explore: analise_eventos
    listens_to_filters: [Ano, Ponto de Entrega, Tipo Instalação]
    field: nota_manutencao_zspmlistnote.mes_nota
  - name: Ano
    title: Ano
    type: field_filter
    default_value: '2024'
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: cortex_sap_operational
    explore: analise_eventos
    listens_to_filters: [Ponto de Entrega, Tipo Instalação]
    field: nota_manutencao_zspmlistnote.ano_nota
  - name: Ponto de Entrega
    title: Ponto de Entrega
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: cortex_sap_operational
    explore: analise_eventos
    listens_to_filters: [Tipo Instalação]
    field: instalacoes_abrv.concat_name
