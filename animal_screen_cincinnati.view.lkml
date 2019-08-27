include: "interface_custom_assessments.view.lkml"
view: animal_screen_cincinnati {

    extends: [interface_custom_assessments]
    sql_table_name: client_assessment_data;;

		dimension: id {
            primary_key: yes
            sql: ${TABLE}.id;;
        }
            ######## Begin: Assessment Questions ############

		dimension: c_animal_home {
            label: "Will you take this animal home?"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_animal_home'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_animal_home' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_animal_home' AS INT))
             )
          ;;
        }

        dimension: c_favorite_animal_cincinnati {
            label: "Favorite Animal - Cincinnati "
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_favorite_animal_cincinnati'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_favorite_animal_cincinnati' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_favorite_animal_cincinnati' AS INT))
             )
          ;;
        }

        dimension: c_rate_cincinnati {
            label: "Rate how much you like this animal"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_rate_cincinnati'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_rate_cincinnati' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_rate_cincinnati' AS INT))
             )
          ;;
        }

        dimension: c_why_cincinnati {
            label: "Why do you like this animal?"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_why_cincinnati'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_why_cincinnati' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_why_cincinnati' AS INT))
             )
          ;;
        }

            ######## End: Assessment Questions ############

}