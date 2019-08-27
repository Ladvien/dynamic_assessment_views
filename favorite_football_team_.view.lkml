include: "interface_custom_assessments.view.lkml"
view: favorite_football_team_ {

    extends: [interface_custom_assessments]
    sql_table_name: client_assessment_data;;

		dimension: id {
            primary_key: yes
            sql: ${TABLE}.id;;
        }
            ######## Begin: Assessment Questions ############

		dimension: c_Favorite_Football_Team {
            label: "Favorite Football Team "
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_Favorite_Football_Team'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Favorite_Football_Team' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Favorite_Football_Team' AS INT))
             )
          ;;
        }

        dimension: c_How_Many_Games2018 {
            label: "How Many Games Won 2018"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_How_Many_Games2018'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_How_Many_Games2018' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_How_Many_Games2018' AS INT))
             )
          ;;
        }

        dimension: c_pizza_type {
            label: "Pizza Type"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_pizza_type'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_pizza_type' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_pizza_type' AS INT))
             )
          ;;
        }

        dimension: c_Why_Team {
            label: "Why do you like this team?"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_Why_Team'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Why_Team' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Why_Team' AS INT))
             )
          ;;
        }

            ######## End: Assessment Questions ############

}