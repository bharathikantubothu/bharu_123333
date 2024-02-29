
view: newww_vieww {
  derived_table: {
    sql: SELECT * FROM pman.abilities LIMIT 100 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: identifier {
    type: string
    sql: ${TABLE}.identifier ;;
  }

  dimension: generation_id {
    type: number
    sql: ${TABLE}.generation_id ;;
  }

  dimension: is_main_series {
    type: number
    sql: ${TABLE}.is_main_series ;;
  }

  set: detail {
    fields: [
        id,
	identifier,
	generation_id,
	is_main_series
    ]
  }
}
