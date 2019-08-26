include: "interface_custom_assessments.view.lkml"
view: ugm_assessment_test {

    extends: [interface_custom_assessments]

    sql_table_name: client_assessment_data;;

		dimension: id {
            primary_key: yes
            sql: ${TABLE}.id;;
        }
            ######## Begin: Assessment Questions ############

		dimension: c_favorite_animal {
            label: "Favorite Animal"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_favorite_animal'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_favorite_animal' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_favorite_animal' AS INT))
             )
          ;;
        }

        dimension: c_favorite_icecream {
            label: "Favorite Icecream"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_favorite_icecream'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_favorite_icecream' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_favorite_icecream' AS INT))
             )
          ;;
        }

        dimension: c_how_much_icecream {
            label: "How much do you like this icecream?"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_how_much_icecream'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_how_much_icecream' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_how_much_icecream' AS INT))
             )
          ;;
        }

        dimension: c_share_icecream {
            label: "Do you want to share your ice cream?"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_share_icecream'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_share_icecream' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_share_icecream' AS INT))
             )
          ;;
        }

            ######## End: Assessment Questions ############

}