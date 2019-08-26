include: "interface_custom_assessments.view.lkml"
view: tehama_pet_assessment {

    extends: [interface_custom_assessments]

    sql_table_name: client_assessment_data;;

		dimension: id {
            primary_key: yes
            sql: ${TABLE}.id;;
        }
            ######## Begin: Assessment Questions ############

		dimension: c_adopt_animal_tehama {
            label: "Will you take this animal home?"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_adopt_animal_tehama'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_adopt_animal_tehama' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_adopt_animal_tehama' AS INT))
             )
          ;;
        }

        dimension: c_favorite_pet_tehama {
            label: "Favorite Pet Tehama"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_favorite_pet_tehama'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_favorite_pet_tehama' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_favorite_pet_tehama' AS INT))
             )
          ;;
        }

        dimension: c_rate_pet_love_tehama {
            label: "Rate how much you love your pet/animal"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_rate_pet_love_tehama'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_rate_pet_love_tehama' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_rate_pet_love_tehama' AS INT))
             )
          ;;
        }

        dimension: c_why_tehama {
            label: "Why do you like this pet/animal?"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_why_tehama'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_why_tehama' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_why_tehama' AS INT))
             )
          ;;
        }

            ######## End: Assessment Questions ############

}