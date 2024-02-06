---
- dashboard: detalhes_da_nota_de_passagem_de_pig
  title: Detalhes Da Nota de Passagem de PIG
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  filters_bar_collapsed: true
  preferred_slug: 3EjFV5wovFt8PqkH5K7GpX
  elements:
  - title: Detalhes da Nota de Passagem de PIG
    name: Detalhes da Nota de Passagem de PIG
    model: cortex_sap_operational
    explore: nota_pig_zspmlistnote
    type: looker_grid
    fields: [nota_pig_zpmtb_np.nota, nota_pig_zpmtb_np.pontos_notaveis, nota_pig_zpmtb_np.km_duto,
      nota_pig_zpmtb_np.data_real, nota_pig_zpmtb_np.hora_real, nota_pig_zpmtb_np.data_prevista,
      nota_pig_zpmtb_np.hora_prevista]
    sorts: [nota_pig_zpmtb_np.data_real]
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
      Nº da Nota Serial: nota_pig_zspmlistnote.n_nota_serial
    row: 0
    col: 6
    width: 18
    height: 8
  - title: Observações da Nota de Passagem de PIG
    name: Observações da Nota de Passagem de PIG
    model: cortex_sap_operational
    explore: nota_pig_zspmlistnote
    type: table
    fields: [nota_pig_zspmlistnote.n_nota_serial, nota_pig_desc.descricao]
    sorts: [nota_pig_zspmlistnote.n_nota_serial]
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
    defaults_version: 1
    listen:
      Nº da Nota Serial: nota_pig_zspmlistnote.n_nota_serial
    row: 8
    col: 0
    width: 24
    height: 7
  - title: Nota de Passagem de PIG
    name: Nota de Passagem de PIG
    model: cortex_sap_operational
    explore: nota_pig_zspmlistnote
    type: looker_single_record
    fields: [nota_pig_zspmlistnote.n_nota_serial, nota_pig_zspmlistnote.qmdat_date, nota_pig_zspmlistnote.mzeit,
      nota_pig_zspmlistnote.tplnr, local_instalacao.nome_pig, nota_pig_zspmlistnote.motivo,
      nota_pig_zspmlistnote.tipo]
    sorts: [nota_pig_zspmlistnote.n_nota_serial]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
    series_labels:
      nota_pig_zspmtext.n_nota_serial: Nº da Nota de Passagem PIG
      lista_de_tdline: Observações
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 1e4d66b9-f066-4c33-b0b7-cc10b4810688}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    transpose: false
    truncate_text: true
    size_to_fit: true
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_fields: []
    hidden_points_if_no: []
    listen:
      Nº da Nota Serial: nota_pig_zspmlistnote.n_nota_serial
    row: 0
    col: 0
    width: 6
    height: 8
  filters:
  - name: Nº da Nota Serial
    title: Nº da Nota Serial
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: cortex_sap_operational
    explore: nota_pig_zspmlistnote
    listens_to_filters: []
    field: nota_pig_zspmlistnote.n_nota_serial
