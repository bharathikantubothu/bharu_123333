
view: addeddd_new_viewww {
  derived_table: {
    sql: SELECT * FROM gcpl240.authenticated_download LIMIT 100 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: download_token {
    type: string
    sql: ${TABLE}.download_token ;;
  }

  dimension: query_guid {
    type: string
    sql: ${TABLE}.query_guid ;;
  }

  dimension: format {
    type: string
    sql: ${TABLE}.format ;;
  }

  dimension: created_at {
    type: number
    sql: ${TABLE}.created_at ;;
  }

  dimension: expires_at {
    type: number
    sql: ${TABLE}.expires_at ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
  }

  dimension: encrypted_download_token {
    type: string
    sql: ${TABLE}.encrypted_download_token ;;
  }

  dimension: encrypted_query_guid {
    type: string
    sql: ${TABLE}.encrypted_query_guid ;;
  }

  dimension: lookup_id {
    type: string
    sql: ${TABLE}.lookup_id ;;
  }

  dimension: encrypted_download_token2 {
    type: string
    sql: ${TABLE}.encrypted_download_token2 ;;
  }

  dimension: apply_vis {
    type: yesno
    sql: ${TABLE}.apply_vis ;;
  }

  dimension: apply_formatting {
    type: yesno
    sql: ${TABLE}.apply_formatting ;;
  }

  set: detail {
    fields: [
        id,
	download_token,
	query_guid,
	format,
	created_at,
	expires_at,
	user_id,
	encrypted_download_token,
	encrypted_query_guid,
	lookup_id,
	encrypted_download_token2,
	apply_vis,
	apply_formatting
    ]
  }
}
