view: subhash_view_a {
  derived_table: {
    sql:
      SELECT
        '2018-06-22' AS year, 'JH4CW2H62EC833223' AS car_number, 'Hyundai' AS car_manufacturer, 56022311665448681 AS how_many_rabbits_can_fit, 'Violet' AS color_of_the_rabbits, TRUE AS is_cool_car_
      UNION ALL
      SELECT
        '2018-08-03' AS year, '3VWKX7AJ1BM103591' AS car_number, 'Hyundai' AS car_manufacturer, 3546180205101889 AS how_many_rabbits_can_fit, 'Green' AS color_of_the_rabbits, FALSE AS is_cool_car_
      UNION ALL
      SELECT
        '2019-03-27' AS year, '4VWKX7AJ1BM103591' AS car_number, 'Mercedes-Benz' AS car_manufacturer, 3543210746125940 AS how_many_rabbits_can_fit, 'Orange' AS color_of_the_rabbits, TRUE AS is_cool_car_

      ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.year ;;
  }

  dimension: car_number {
    type: string
    sql: ${TABLE}.car_number ;;
  }

  dimension: car_manufacturer {
    type: string
    sql: ${TABLE}.car_manufacturer ;;
  }

  dimension: how_many_rabbits_can_fit {
    type: number
    sql: ${TABLE}.how_many_rabbits_can_fit ;;
  }

  dimension: color_of_the_rabbits {
    type: string
    sql: ${TABLE}.color_of_the_rabbits ;;
  }

  dimension: is_cool_car_ {
    type: yesno
    sql: ${TABLE}.is_cool_car_ ;;
  }

  measure: count {
    type: count
  }


  # # You can specify the table name if it's different from the view name:
  # sql_table_name: my_schema_name.tester ;;
  #
  # # Define your dimensions and measures here, like this:
  # dimension: user_id {
  #   description: "Unique ID for each user that has ordered"
  #   type: number
  #   sql: ${TABLE}.user_id ;;
  # }
  #
  # dimension: lifetime_orders {
  #   description: "The total number of orders for each user"
  #   type: number
  #   sql: ${TABLE}.lifetime_orders ;;
  # }
  #
  # dimension_group: most_recent_purchase {
  #   description: "The date when each user last ordered"
  #   type: time
  #   timeframes: [date, week, month, year]
  #   sql: ${TABLE}.most_recent_purchase_at ;;
  # }
  #
  # measure: total_lifetime_orders {
  #   description: "Use this for counting lifetime orders across many users"
  #   type: sum
  #   sql: ${lifetime_orders} ;;
  # }
}

# view: subhash_view_a {
#   # Or, you could make this view a derived table, like this:
#   derived_table: {
#     sql: SELECT
#         user_id as user_id
#         , COUNT(*) as lifetime_orders
#         , MAX(orders.created_at) as most_recent_purchase_at
#       FROM orders
#       GROUP BY user_id
#       ;;
#   }
#
#   # Define your dimensions and measures here, like this:
#   dimension: user_id {
#     description: "Unique ID for each user that has ordered"
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
# }
