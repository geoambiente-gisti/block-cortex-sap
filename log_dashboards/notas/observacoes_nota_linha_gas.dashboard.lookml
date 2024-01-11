---
- dashboard: observaes_da_nota_de_linha_de_gs
  title: Observações da Nota de Linha de Gás
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: zULhBQBnebseFPCrMAE38k
  elements:
  - title: Observações
    name: Observações
    model: cortex_sap_operational
    explore: nota_linha_gas_zspmlistnote
    type: table
    fields: [nota_linha_gas_zspmlistnote.qmnum, nota_linha_gas_desc.descricao]
    sorts: [nota_linha_gas_zspmlistnote.qmnum]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
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
      Nº da nota: nota_linha_gas_zspmlistnote.qmnum
    row: 0
    col: 9
    width: 15
    height: 14
  - title: Nota de Linha de Gás
    name: Nota de Linha de Gás
    model: cortex_sap_operational
    explore: nota_linha_gas_zspmlistnote
    type: looker_single_record
    fields: [nota_linha_gas_zspmlistnote.qmnum, nota_linha_gas_zspmlistnote.qmdat_date,
      nota_linha_gas_zspmlistnote.mzeit, nota_linha_gas_zspmlistnote.contactname,
      nota_linha_gas_zspmlistnote.name, nota_linha_gas_zspmlistnote.tplnr, nota_linha_gas_zspmlistnote.pltxt]
    sorts: [nota_linha_gas_zspmlistnote.qmdat_date desc]
    limit: 500
    column_limit: 50
    show_view_names: false
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
    defaults_version: 1
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Nº da nota: nota_linha_gas_zspmlistnote.qmnum
    row: 0
    col: 0
    width: 9
    height: 14
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
    listens_to_filters: []
    field: nota_linha_gas_zspmlistnote.qmnum
