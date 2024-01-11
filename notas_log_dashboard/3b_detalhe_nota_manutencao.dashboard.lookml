# - dashboard: observacao_e_nota_de_operao_associada_look_ml
#   title: Observação e Nota de Operação Associada
#   layout: newspaper
#   preferred_viewer: dashboards-next
#   description: ''
#   filters_bar_collapsed: true
#   preferred_slug: HCNyg7Y2xqFrWZj5zmGBGC
#   elements:
#   - title: Nota de Manutenção
#     name: Nota de Manutenção
#     model: cortex_sap_operational
#     explore: nota_manutencao_zspmlistnote
#     type: looker_single_record
#     fields: [nota_manutencao_zspmlistnote.qmnum, nota_manutencao_zspmlistnote.qmdat_date,
#       nota_manutencao_zspmlistnote.mzeit, nota_manutencao_zspmlistnote.tplnr, nota_manutencao_zspmlistnote.pltxt,
#       nota_manutencao_zspmlistnote.qmtxt, zpmtb_no_nm.num_log_no]
#     limit: 500
#     column_limit: 50
#     show_view_names: false
#     hidden_pivots: {}
#     show_row_numbers: true
#     truncate_column_names: false
#     hide_totals: false
#     hide_row_totals: false
#     table_theme: editable
#     limit_displayed_rows: false
#     enable_conditional_formatting: false
#     conditional_formatting_include_totals: false
#     conditional_formatting_include_nulls: false
#     defaults_version: 1
#     listen:
#       Nº da nota: nota_manutencao_zspmlistnote.qmnum
#     row: 0
#     col: 0
#     width: 12
#     height: 6
#   - title: Nota Operação
#     name: Nota Operação
#     model: cortex_sap_operational
#     explore: nota_manutencao_zspmlistnote
#     type: looker_single_record
#     fields: [nota_operacao_zspmlistnote.qmnum, nota_operacao_zspmlistnote.qmdat_date,
#       nota_operacao_zspmlistnote.mzeit, nota_operacao_zspmlistnote.occur_type, nota_operacao_zspmlistnote.orgname,
#       nota_operacao_zspmlistnote.contactname, nota_operacao_zspmlistnote.tplnr, nota_operacao_zspmlistnote.pltxt,
#       nota_operacao_zspmlistnote.qmtxt]
#     sorts: [nota_operacao_zspmlistnote.qmdat_date desc]
#     limit: 500
#     column_limit: 50
#     show_view_names: false
#     show_row_numbers: true
#     transpose: false
#     truncate_text: true
#     hide_totals: false
#     hide_row_totals: false
#     size_to_fit: true
#     table_theme: white
#     limit_displayed_rows: false
#     enable_conditional_formatting: false
#     header_text_alignment: left
#     header_font_size: 12
#     rows_font_size: 12
#     conditional_formatting_include_totals: false
#     conditional_formatting_include_nulls: false
#     defaults_version: 1
#     listen:
#       Nº da nota: nota_manutencao_zspmlistnote.qmnum
#     row: 0
#     col: 12
#     width: 12
#     height: 6
#   - title: Observações da Nota
#     name: Observações da Nota
#     model: cortex_sap_operational
#     explore: nota_manutencao_zspmlistnote
#     type: table
#     fields: [nota_manutencao_desc.qmnum, nota_manutencao_desc.descricao]
#     sorts: [nota_manutencao_desc.qmnum]
#     limit: 500
#     column_limit: 50
#     show_view_names: false
#     show_row_numbers: false
#     truncate_column_names: false
#     hide_totals: false
#     hide_row_totals: false
#     table_theme: white
#     limit_displayed_rows: false
#     enable_conditional_formatting: false
#     conditional_formatting_include_totals: false
#     conditional_formatting_include_nulls: false
#     defaults_version: 1
#     listen:
#       Nº da nota: nota_manutencao_zspmlistnote.qmnum
#     row: 6
#     col: 0
#     width: 24
#     height: 7
#   filters:
#   - name: Nº da nota
#     title: Nº da nota
#     type: field_filter
#     default_value: ''
#     allow_multiple_values: true
#     required: false
#     ui_config:
#       type: tag_list
#       display: popover
#     model: cortex_sap_operational
#     explore: nota_manutencao_zspmlistnote
#     listens_to_filters: []
#     field: nota_manutencao_zspmlistnote.qmnum
