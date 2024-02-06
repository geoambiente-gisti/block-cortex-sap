---
- dashboard: descrio_e_observaes_das_nota_de_instruo_operacional
  title: Descrição e Observações das Nota de Instrução Operacional
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  filters_bar_collapsed: true
  preferred_slug: GYSaZdhSEZf2uuN605vNkD
  elements:
  - title: Descrição das Notas
    name: Descrição das Notas
    model: cortex_sap_operational
    explore: nota_instrucao_operacional_zspmlistnote
    type: table
    fields: [nota_instrucao_operacional_zspmlistnote.n_nota_serial, nota_instrucao_operacional_zspmlistnote.descricao]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    transpose: false
    truncate_text: true
    size_to_fit: true
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    listen:
      Nº da Nota Serial: nota_instrucao_operacional_zspmlistnote.n_nota_serial
    row: 0
    col: 12
    width: 12
    height: 9
  - title: Observações da Nota de Instrução
    name: Observações da Nota de Instrução
    model: cortex_sap_operational
    explore: nota_instrucao_operacional_zspmlistnote
    type: table
    fields: [nota_instrucao_operacional_zspmlistnote.n_nota_serial, nota_instrucao_operacional_obs.descricao]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    transpose: false
    truncate_text: true
    size_to_fit: true
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    listen:
      Nº da Nota Serial: nota_instrucao_operacional_zspmlistnote.n_nota_serial
    row: 9
    col: 0
    width: 24
    height: 7
  - title: Nota de Instrução Operacional
    name: Nota de Instrução Operacional
    model: cortex_sap_operational
    explore: nota_instrucao_operacional_zspmlistnote
    type: looker_single_record
    fields: [nota_instrucao_operacional_zspmlistnote.n_nota_serial, nota_instrucao_operacional_zspmlistnote.tipo,
      nota_instrucao_operacional_zspmlistnote.qmdat_date, nota_instrucao_operacional_zspmlistnote.mzeit,
      nota_instrucao_operacional_zspmlistnote.ltrmn_date, nota_instrucao_operacional_zspmlistnote.txtstat,
      nota_instrucao_operacional_zspmlistnote.titulo]
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
      Nº da Nota Serial: nota_instrucao_operacional_zspmlistnote.n_nota_serial
    row: 0
    col: 0
    width: 12
    height: 9
  filters:
  - name: Nº da Nota Serial
    title: Nº da Nota Serial
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: cortex_sap_operational
    explore: nota_instrucao_operacional_zspmlistnote
    listens_to_filters: []
    field: nota_instrucao_operacional_zspmlistnote.n_nota_serial
