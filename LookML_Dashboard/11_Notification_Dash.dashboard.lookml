- dashboard: 11_notification_dash
  title: "Notification"
  layout: newspaper
  preferred_viewer: dashboards-next
  tile_size: 100

  filters:

  elements:
    - name: add_a_unique_name_1691670113
      title: Untitled Visualization
      model: cortex_sap_operational
      explore: notification
      type: looker_grid
      fields: [notification.client_mandt, notification.notification_number_qmnum, notification.notification_description_qmtxy,
        notification_status.status_long_text_txt30, notification.create_date_erdat_date]
      filters:
        notification_long_text.language_key_spras: P
        notification_status.language_key_spras: P
        notification.create_date_erdat_date: 1 months
      sorts: [notification.client_mandt]
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
      hidden_pivots: {}
      row: 8
      col: 0
      width: 14
      height: 7
