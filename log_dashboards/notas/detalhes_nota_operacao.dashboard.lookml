---
- dashboard: detalhes_da_nota_de_operao
  title: Detalhes Da Nota de Operação
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  filters_bar_collapsed: true
  preferred_slug: fEVQ4jhF6QqlMyu58q9xo8
  elements:
  - title: Nota de Operação
    name: Nota de Operação
    model: cortex_sap_operational
    explore: nota_operacao_zspmlistnote
    type: looker_single_record
    fields: [nota_operacao_zspmlistnote.qmnum, nota_operacao_zspmlistnote.qmdat_date,
      nota_operacao_zspmlistnote.mzeit, nota_operacao_zspmlistnote.contactname,
      nota_operacao_zspmlistnote.occur_type, nota_operacao_zspmlistnote.tplnr, nota_operacao_zspmlistnote.pltxt]
    sorts: [nota_operacao_zspmlistnote.qmnum]
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
      Nº da nota: nota_operacao_zspmlistnote.qmnum
    row: 0
    col: 0
    width: 12
    height: 7
  - title: Nota de Manutenção
    name: Nota de Manutenção
    model: cortex_sap_operational
    explore: nota_operacao_zspmlistnote
    type: looker_single_record
    fields: [nota_manutencao_zspmlistnote.qmnum, nota_manutencao_zspmlistnote.qmdat_date,
      nota_manutencao_zspmlistnote.mzeit, nota_manutencao_zspmlistnote.tplnr]
    sorts: [nota_manutencao_zspmlistnote.qmdat_date desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    defaults_version: 1
    listen:
      Nº da nota: nota_operacao_zspmlistnote.qmnum
    row: 0
    col: 12
    width: 12
    height: 7
  - title: Observações
    name: Observações
    model: cortex_sap_operational
    explore: nota_operacao_zspmlistnote
    type: table
    fields: [nota_operacao_zspmlistnote.qmnum, nota_operacao_desc.descricao]
    filters: {}
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: split(${nota_operacao_desc.descricao}, "&")
      label: Descrição
      value_format:
      value_format_name:
      _kind_hint: dimension
      table_calculation: descricao
      _type_hint: string_list
      is_disabled: true
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application: undefined
    conditional_formatting: []
    defaults_version: 1
    hidden_fields: []
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
    hidden_pivots: {}
    listen:
      Nº da nota: nota_operacao_zspmlistnote.qmnum
    row: 7
    col: 0
    width: 24
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
    explore: nota_operacao_zspmlistnote
    listens_to_filters: []
    field: nota_operacao_zspmlistnote.qmnum
