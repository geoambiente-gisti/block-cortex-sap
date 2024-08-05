constant: CONNECTION_NAME {
  value: "looker_tbg_prod_connection"
  export: override_required
}

constant: GCP_PROJECT {
  value: "tbg-app-prod"
  export: override_required
}

constant: REPORTING_DATASET {
  value: "SAP_REPORTING"
  export: override_required
}

constant: LOG_DATASET {
  value: "SAP_LOG"
  export: override_required
}

constant: CLIENT {
  value: "800"
  export: override_required
}

constant: CONNECTION {
  value: "sap_reporting_bigquery_prod"
  export: override_required
}
