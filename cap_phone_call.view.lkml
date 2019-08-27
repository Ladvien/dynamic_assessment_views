include: "interface_custom_assessments.view.lkml"
view: cap_phone_call {

    extends: [interface_custom_assessments]
    sql_table_name: client_assessment_data;;

		dimension: id {
            primary_key: yes
            sql: ${TABLE}.id;;
        }
            ######## Begin: Assessment Questions ############

		dimension: birth_city {
            label: "City or County of Birth"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'birth_city'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'birth_city' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'birth_city' AS INT))
             )
          ;;
        }

        dimension: current_phone_number {
            label: "Current Phone Number"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'current_phone_number'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'current_phone_number' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'current_phone_number' AS INT))
             )
          ;;
        }

        dimension: c_callnote {
            label: "Call Note"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_callnote'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_callnote' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_callnote' AS INT))
             )
          ;;
        }

        dimension: c_demo_favorite_color {
            label: "Favorite Color"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_demo_favorite_color'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_demo_favorite_color' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_demo_favorite_color' AS INT))
             )
          ;;
        }

        dimension: c_demo_favorite_food {
            label: "Favorite Food"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_demo_favorite_food'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_demo_favorite_food' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_demo_favorite_food' AS INT))
             )
          ;;
        }

        dimension: c_information {
            label: "Caller Need"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_information'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_information' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_information' AS INT))
             )
          ;;
        }

        dimension: c_phonetype {
            label: "Phone Type"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_phonetype'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_phonetype' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_phonetype' AS INT))
             )
          ;;
        }

        dimension: c_satt_q3 {
            label: "Where did you sleep last night?"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_satt_q3'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_satt_q3' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_satt_q3' AS INT))
             )
          ;;
        }

        dimension: c_toggle_test {
            label: "Toggle Test"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_toggle_test'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_toggle_test' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_toggle_test' AS INT))
             )
          ;;
        }

        dimension: c_xinfo {
            label: "Call Outcome"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_xinfo'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_xinfo' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_xinfo' AS INT))
             )
          ;;
        }

            ######## End: Assessment Questions ############

}