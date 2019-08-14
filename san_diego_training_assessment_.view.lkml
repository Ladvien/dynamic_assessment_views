include: "interface_custom_assessments.view.lkml"
view: san_diego_training_assessment_ {

    extends: [interface_custom_assessments]

    sql_table_name: client_assessment_data;;

    dimension: id {
        primary_key: yes
        sql: ${TABLE}.id;;
    }
    ######## Begin: Assessment Questions ############

    dimension: c_do_you_have_a_pet {
        label: "Do you have a pet"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_do_you_have_a_pet'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_do_you_have_a_pet' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_do_you_have_a_pet' AS INT))
         );;
    }
    dimension: c_Favorite_pet_sandiego {
        label: "Favorite Pet San Diego"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Favorite_pet_sandiego'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Favorite_pet_sandiego' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Favorite_pet_sandiego' AS INT))
         );;
    }
    dimension: c_range_pet {
        label: "Rate how much you love your pet"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_range_pet'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_range_pet' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_range_pet' AS INT))
         );;
    }
    dimension: c_why_like_pet {
        label: "Why do you like this pet?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_why_like_pet'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_why_like_pet' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_why_like_pet' AS INT))
         );;
    }
    ######## End: Assessment Questions ############

}