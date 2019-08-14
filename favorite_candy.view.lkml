include: "interface_custom_assessments.view.lkml"
view: favorite_candy {

    extends: [interface_custom_assessments]

    sql_table_name: client_assessment_data;;

    dimension: id {
        primary_key: yes
        sql: ${TABLE}.id;;
    }
    ######## Begin: Assessment Questions ############

    dimension: c_favorite_candy {
        label: "Favorite Candy"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_favorite_candy'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_favorite_candy' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_favorite_candy' AS INT))
         );;
    }
    dimension: c_rate_candy {
        label: "Rate how much you like this candy"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_rate_candy'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_rate_candy' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_rate_candy' AS INT))
         );;
    }
    dimension: c_why_do_you_like_candy {
        label: "Why do you like this candy?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_why_do_you_like_candy'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_why_do_you_like_candy' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_why_do_you_like_candy' AS INT))
         );;
    }
    ######## End: Assessment Questions ############

}