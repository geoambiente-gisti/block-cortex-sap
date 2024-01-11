---
- dashboard: alarmes
  title: Alarmes
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: VX337SIF7UXz7XAYlv5hxQ
  elements:
  - title: Instalações com a maior quantidade de alarmes
    name: Instalações com a maior quantidade de alarmes
    model: cortex_sap_operational
    explore: alarmes
    type: looker_bar
    fields: [local_instalacao.nome_local, alarmes.count, instalacoes_alarmes.instalacao]
    filters:
      local_instalacao.nome_local: "-NULL"
    sorts: [alarmes.count desc 0]
    limit: 10
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: concat(${local_instalacao.nome_local}, "-", ${instalacoes_alarmes.instalacao})
      label: Nome Instalacão
      value_format:
      value_format_name:
      _kind_hint: dimension
      table_calculation: nome_instalacao
      _type_hint: string
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
    value_labels: legend
    label_type: labPer
    inner_radius: 45
    color_application:
      collection_id: 5591d8d1-6b49-4f8e-bafa-b874d82f8eb7
      palette_id: 18d0c733-1d87-42a9-934f-4ba8ef81d736
      options:
        steps: 5
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
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    hidden_fields: [local_instalacao.nome_local, instalacoes_alarmes.instalacao]
    listen:
      Sap Local Instalacao: instalacoes_alarmes.sap_local_instalacao
      Tipo Area: alarmes.tipo_area
      Type: alarmes.type
      Tagname: alarmes.tagname
      Alarmstate: alarmes.alarmstate
      Data eventos: alarmes.eventstamp_date
    row: 17
    col: 0
    width: 24
    height: 8
  - title: Alarmes
    name: Alarmes
    model: cortex_sap_operational
    explore: alarmes
    type: looker_grid
    fields: [alarmes.alarmid, instalacoes_alarmes.instalacao, instalacoes_alarmes.sap_local_instalacao,
      alarmes.eventstamp_time, alarmes.tagname, alarmes.type, alarmes.eventstamputc_date,
      alarmes.alarmstate, alarmes.area, alarmes.category, alarmes.description, alarmes.operator,
      alarmes.priority, alarmes.provider]
    limit: 5000
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
    hidden_pivots: {}
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
    minimum_column_width: 75
    series_column_widths:
      alarmes.eventstamp_time: 144
    listen:
      Sap Local Instalacao: instalacoes_alarmes.sap_local_instalacao
      Tipo Area: alarmes.tipo_area
      Type: alarmes.type
      Tagname: alarmes.tagname
      Alarmstate: alarmes.alarmstate
      Data eventos: alarmes.eventstamp_date
    row: 32
    col: 0
    width: 24
    height: 8
  - title: Relação entre os alarmes e Area/Instalação
    name: Relação entre os alarmes e Area/Instalação
    model: cortex_sap_operational
    explore: alarmes
    type: looker_grid
    fields: [instalacoes_alarmes.sap_local_instalacao, instalacoes_alarmes.instalacao,
      alarmes.count, alarmes.area]
    filters:
      instalacoes_alarmes.instalacao: "-NULL"
    sorts: [alarmes.count desc]
    limit: 10
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
    value_labels: legend
    label_type: labPer
    listen:
      Tipo Area: alarmes.tipo_area
      Type: alarmes.type
      Tagname: alarmes.tagname
      Alarmstate: alarmes.alarmstate
      Data eventos: alarmes.eventstamp_date
    row: 25
    col: 0
    width: 24
    height: 7
  - title: Bad Actors Mensal
    name: Bad Actors Mensal
    model: cortex_sap_operational
    explore: alarmes
    type: looker_bar
    fields: [alarmes.count, alarmes.full_tagname]
    filters: {}
    sorts: [alarmes.count desc 0]
    limit: 10
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: alarmes.count, id: alarmes.count,
            name: Alarmes}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    defaults_version: 1
    listen:
      Tipo Area: alarmes.tipo_area
      Tagname: alarmes.tagname
      Type: alarmes.type
      Alarmstate: alarmes.alarmstate
      Data eventos: alarmes.eventstamp_date
    row: 11
    col: 8
    width: 7
    height: 6
  - title: Total de Alarmes Por Dia
    name: Total de Alarmes Por Dia
    model: cortex_sap_operational
    explore: alarmes
    type: looker_column
    fields: [alarmes.eventstamp_date, alarmes.count]
    fill_fields: [alarmes.eventstamp_date]
    sorts: [alarmes.eventstamp_date desc]
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
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Tipo Area: alarmes.tipo_area
      Tagname: alarmes.tagname
      Type: alarmes.type
      Alarmstate: alarmes.alarmstate
      Data eventos: alarmes.eventstamp_date
    row: 11
    col: 15
    width: 9
    height: 6
  - title: Média de Alarmes Anunciados por dia
    name: Média de Alarmes Anunciados por dia
    model: cortex_sap_operational
    explore: alarmes
    type: marketplace_https_github_com_looker_open_source_viz_radial_gauge_marketplace_git::radial_gauge-marketplace
    fields: [alarmes.eventstamp_date, alarmes.count]
    fill_fields: [alarmes.eventstamp_date]
    filters: {}
    sorts: [alarmes.eventstamp_date desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: mean(${alarmes.count})
      label: Media alarmes por dia
      value_format: '0'
      value_format_name: __custom
      _kind_hint: measure
      table_calculation: media_alarmes_por_dia
      _type_hint: number
    - category: table_calculation
      expression: '288'
      label: Ideal
      value_format:
      value_format_name:
      _kind_hint: dimension
      table_calculation: ideal
      _type_hint: number
    hidden_fields: [alarmes.eventstamp_date, alarmes.count]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    arm_length: 9
    arm_weight: 48
    spinner_length: 153
    spinner_weight: 25
    target_length: 30
    target_gap: 30
    target_weight: 100
    range_min: 0
    range_max: 864
    value_label_type: value
    value_label_font: 12
    value_label_padding: 35
    target_source: 'off'
    target_label_type: both
    target_label_font: 3
    target_value_override: ''
    label_font_size: 7
    spinner_type: spinner
    fill_color: "#7ce61d"
    background_color: "#CECECE"
    spinner_color: "#282828"
    range_color: "#282828"
    gauge_fill_type: segment
    fill_colors: ["#00b050", "#92d050", "#ff0000"]
    viz_trellis_by: none
    trellis_rows: 5
    trellis_cols: 2
    angle: 90
    cutout: 50
    range_x: 1
    range_y: 1
    target_label_padding: 1.36
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: greater than, value: 576, background_color: "#EA4335",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: greater than, value: 288,
        background_color: "#92d050", font_color: "#fcfff9", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}, {type: less than, value: 288, background_color: "#00b050",
        font_color: "#f9fff2", color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 0
    value_labels: legend
    label_type: labPer
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Tipo Area: alarmes.tipo_area
      Tagname: alarmes.tagname
      Type: alarmes.type
      Alarmstate: alarmes.alarmstate
      Data eventos: alarmes.eventstamp_date
    row: 0
    col: 0
    width: 7
    height: 5
  - title: Média de Alarmes Anunciados por hora
    name: Média de Alarmes Anunciados por hora
    model: cortex_sap_operational
    explore: alarmes
    type: marketplace_https_github_com_looker_open_source_viz_radial_gauge_marketplace_git::radial_gauge-marketplace
    fields: [alarmes.eventstamp_hour, alarmes.count]
    fill_fields: [alarmes.eventstamp_hour]
    filters: {}
    sorts: [alarmes.eventstamp_hour desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: mean(${alarmes.count})
      label: Média de Alarmes Anunciados por hora
      value_format: '0'
      value_format_name: __custom
      _kind_hint: measure
      table_calculation: media_de_alarmes_anunciados_por_hora
      _type_hint: number
    hidden_fields: [alarmes.eventstamp_hour, alarmes.count]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    arm_length: 25
    arm_weight: 50
    spinner_length: 100
    spinner_weight: 50
    target_length: 10
    target_gap: 10
    target_weight: 8
    range_min: 0
    range_max: 36
    value_label_type: value
    value_label_font: 12
    value_label_padding: 45
    target_source: 'off'
    target_label_type: both
    target_label_font: 3
    label_font_size: 7
    range_formatting: ''
    spinner_type: needle
    fill_color: "#0092E5"
    background_color: "#CECECE"
    spinner_color: "#282828"
    range_color: "#282828"
    gauge_fill_type: segment
    fill_colors: ["#00b050", "#92d050", "#ff0000"]
    viz_trellis_by: none
    trellis_rows: 2
    trellis_cols: 2
    angle: 90
    cutout: 50
    range_x: 1
    range_y: 1
    target_label_padding: 1.06
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
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 0
    hidden_series: [media_de_alarmes_anunciados_por_hora]
    listen:
      Tipo Area: alarmes.tipo_area
      Tagname: alarmes.tagname
      Type: alarmes.type
      Alarmstate: alarmes.alarmstate
      Data eventos: alarmes.eventstamp_date
    row: 0
    col: 7
    width: 7
    height: 5
  - title: Média de Alarmes Anunciados por 10 min
    name: Média de Alarmes Anunciados por 10 min
    model: cortex_sap_operational
    explore: alarmes
    type: marketplace_https_github_com_looker_open_source_viz_radial_gauge_marketplace_git::radial_gauge-marketplace
    fields: [alarmes.diff_min, alarmes.count]
    filters: {}
    sorts: [alarmes.diff_min]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${alarmes.diff_min} / 10"
      label: Intervalos
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: intervalos
      _type_hint: number
    - category: table_calculation
      expression: "${alarmes.count}/${intervalos}"
      label: media_intervalo
      value_format: 0.##
      value_format_name: __custom
      _kind_hint: measure
      table_calculation: media_intervalo
      _type_hint: number
    hidden_fields: [alarmes.diff_min, alarmes.count, intervalos]
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    arm_length: 25
    arm_weight: 50
    spinner_length: 100
    spinner_weight: 50
    target_length: 15
    target_gap: 15
    target_weight: 50
    range_min: 0
    range_max: 6
    value_label_type: value
    value_label_font: 12
    value_label_override: Média de Alarmes Anunciados por 10
    value_label_padding: 60
    target_source: 'off'
    target_label_type: both
    target_label_font: 3
    label_font_size: 7
    spinner_type: needle
    fill_color: "#0092E5"
    background_color: "#CECECE"
    spinner_color: "#282828"
    range_color: "#282828"
    gauge_fill_type: segment
    fill_colors: ["#00b050", "#92d050", "#ff0000"]
    viz_trellis_by: none
    trellis_rows: 2
    trellis_cols: 2
    angle: 90
    cutout: 50
    range_x: 1
    range_y: 1
    target_label_padding: 1.5
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
    defaults_version: 0
    listen:
      Tipo Area: alarmes.tipo_area
      Tagname: alarmes.tagname
      Type: alarmes.type
      Alarmstate: alarmes.alarmstate
      Data eventos: alarmes.eventstamp_date
    row: 0
    col: 14
    width: 7
    height: 5
  - title: Instabilidade % Horas (>60 alarmes/hora)
    name: Instabilidade % Horas (>60 alarmes/hora)
    model: cortex_sap_operational
    explore: instabilidade_mes
    type: looker_line
    fields: [instabilidade_mes.mes, instabilidade_mes.qtd_horas, instabilidade_mes.horas_instaveis,
      instabilidade_mes.count, instabilidade_mes.eventstamp_month]
    filters:
      instabilidade_mes.eventstamp_date: 1 years
    sorts: [instabilidade_mes.eventstamp_month]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${instabilidade_mes.horas_instaveis} / ${instabilidade_mes.qtd_horas}"
      label: Instabilidade % horas
      value_format:
      value_format_name: percent_0
      _kind_hint: dimension
      table_calculation: instabilidade_horas
      _type_hint: number
    - category: table_calculation
      expression: "${instabilidade_mes.mes}"
      label: Mês
      value_format:
      value_format_name:
      _kind_hint: dimension
      table_calculation: mes
      _type_hint: string
    - category: table_calculation
      expression: '6.5'
      label: Meta
      value_format:
      value_format_name:
      _kind_hint: dimension
      table_calculation: meta
      _type_hint: number
      is_disabled: true
    - category: table_calculation
      expression: if(${instabilidade_mes.count} > -1, 0.065, 0) * 100
      label: Meta
      value_format: 0.##
      value_format_name: __custom
      _kind_hint: measure
      table_calculation: meta_1
      _type_hint: number
    - category: table_calculation
      expression: if(${instabilidade_mes.count} > -1, ${instabilidade_horas}, 0) *100
      label: Instabilidade %
      value_format: 0.##
      value_format_name: __custom
      _kind_hint: measure
      table_calculation: instabilidade
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
    x_axis_reversed: true
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: meta_1, id: meta_1,
            name: Meta}, {axisId: instabilidade, id: instabilidade, name: Instabilidade
              %}], showLabels: true, showValues: true, maxValue: 10, unpinAxis: true,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    size_by_field: instabilidade_horas
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: []
    series_colors:
      instabilidade: "#1A73E8"
      meta_1: "#12B5CB"
    series_labels:
      meta_1: Meta <=
    reference_lines: []
    trend_lines: []
    ordering: none
    show_null_labels: false
    show_dropoff: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [instabilidade_mes.qtd_horas, instabilidade_mes.horas_instaveis,
      instabilidade_mes.mes, instabilidade_mes.count, instabilidade_horas, mes]
    hidden_pivots: {}
    listen: {}
    row: 5
    col: 0
    width: 12
    height: 6
  - title: Bad Actors Contribuição % dos 10 maiores
    name: Bad Actors Contribuição % dos 10 maiores
    model: cortex_sap_operational
    explore: bad_actors
    type: looker_line
    fields: [bad_actors.month, bad_actors.year, bad_actors.total_mes, bad_actors.eventstamp_month,
      bad_actors.sum]
    filters:
      bad_actors.eventstamp_month: 1 years
    sorts: [bad_actors.eventstamp_month desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "(${bad_actors.sum} / ${bad_actors.total_mes}) * 100"
      label: Bad Actors %
      value_format: 0.##
      value_format_name: __custom
      _kind_hint: measure
      table_calculation: bad_actors
      _type_hint: number
    - category: table_calculation
      expression: "${bad_actors.sum}"
      label: sun
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: sun
      _type_hint: number
    - category: table_calculation
      expression: "${bad_actors.eventstamp_month}"
      label: Mês evento
      value_format:
      value_format_name:
      _kind_hint: dimension
      table_calculation: mes_evento
      _type_hint: date
      is_disabled: true
    - category: table_calculation
      expression: if(${bad_actors.sum}>-1, 0.1, 0) * 100
      label: meta
      value_format: 0.##
      value_format_name: __custom
      _kind_hint: measure
      table_calculation: meta
      _type_hint: number
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: time
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: bad_actors, id: bad_actors,
            name: Bad Actors %}, {axisId: meta, id: meta, name: meta}], showLabels: true,
        showValues: true, maxValue: !!null '', valueFormat: '', unpinAxis: true, tickDensity: custom,
        tickDensityCustom: 11, type: linear}]
    x_axis_label: Mês
    x_axis_zoom: false
    y_axis_zoom: false
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hidden_series: [bad_actors.sum]
    hide_legend: false
    series_labels:
      bad_actors: Bad Actors %
      meta: META <=
    reference_lines: []
    swap_axes: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [bad_actors.total_mes, bad_actors.month, bad_actors.year, bad_actors.sum,
      sun]
    hidden_pivots: {}
    listen: {}
    row: 5
    col: 12
    width: 12
    height: 6
  - title: Total de Alarmes Mensal
    name: Total de Alarmes Mensal
    model: cortex_sap_operational
    explore: alarmes
    type: looker_column
    fields: [alarmes.eventstamp_month, alarmes.count]
    fill_fields: [alarmes.eventstamp_month]
    filters:
      alarmes.eventstamp_month: 1 years
    sorts: [alarmes.eventstamp_month desc]
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: alarmes.count, id: alarmes.count,
            name: Alarmes}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Mês
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: false
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen:
      Alarmstate: alarmes.alarmstate
    row: 11
    col: 0
    width: 8
    height: 6
  - title: Alarmes Omitidos
    name: Alarmes Omitidos
    model: cortex_sap_operational
    explore: alarmes_suprimidos
    type: looker_column
    fields: [alarmes_suprimidos.minute_alarm, alarmes_suprimidos.count]
    filters:
      alarmes_suprimidos.eventstamp_date: 1 years
      alarmes_suprimidos.alarmstate: '"UNACK_ALM"'
    sorts: [alarmes_suprimidos.minute_alarm]
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
    defaults_version: 1
    listen: {}
    row: 40
    col: 0
    width: 24
    height: 9
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |
      | Cor |            Descrição            |
      |:---:|:---|
      | <span style="display:inline-block;width:12px;height:12px;border-radius:50%;background-color:#00b050 ;"></span> | Ideal   |
      | <span style="display:inline-block;width:12px;height:12px;border-radius:50%;background-color:#92d050;"></span> | Gerenciável |
      | <span style="display:inline-block;width:12px;height:12px;border-radius:50%;background-color:#ff0000 ;"></span> | Crítico |
    row: 0
    col: 21
    width: 3
    height: 5
  filters:
  - name: Data eventos
    title: Data eventos
    type: field_filter
    default_value: 30 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: cortex_sap_operational
    explore: alarmes
    listens_to_filters: []
    field: alarmes.eventstamp_date
  - name: Tagname
    title: Tagname
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: cortex_sap_operational
    explore: alarmes
    listens_to_filters: []
    field: alarmes.tagname
  - name: Sap Local Instalacao
    title: Sap Local Instalacao
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: cortex_sap_operational
    explore: alarmes
    listens_to_filters: []
    field: instalacoes_alarmes.sap_local_instalacao
  - name: Alarmstate
    title: Alarmstate
    type: field_filter
    default_value: '"UNACK_ALM"'
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: cortex_sap_operational
    explore: alarmes
    listens_to_filters: []
    field: alarmes.alarmstate
  - name: Type
    title: Type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: cortex_sap_operational
    explore: alarmes
    listens_to_filters: []
    field: alarmes.type
  - name: Tipo Area
    title: Tipo Area
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: cortex_sap_operational
    explore: alarmes
    listens_to_filters: []
    field: alarmes.tipo_area
