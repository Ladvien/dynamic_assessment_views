include: "interface_custom_assessments.view.lkml"
view: supplies_given {

    extends: [interface_custom_assessments]

    sql_table_name: client_assessment_data;;

    dimension: id {
        primary_key: yes
        sql: ${TABLE}.id;;
    }
    ######## Begin: Assessment Questions ############

    dimension: c_supplies_bandages {
        label: "Bandages"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_supplies_bandages'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_supplies_bandages' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_supplies_bandages' AS INT))
         );;
    }
    dimension: c_supplies_bandages_date_given {
        label: "Date Given"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_supplies_bandages_date_given'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_supplies_bandages_date_given' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_supplies_bandages_date_given' AS INT))
         );;
    }
    dimension: c_supplies_bandages_quantity_given {
        label: "Quantity Given"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_supplies_bandages_quantity_given'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_supplies_bandages_quantity_given' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_supplies_bandages_quantity_given' AS INT))
         );;
    }
    dimension: c_supplies_batteries {
        label: "Batteries"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_supplies_batteries'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_supplies_batteries' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_supplies_batteries' AS INT))
         );;
    }
    dimension: c_supplies_batteries_date_given {
        label: "Date Given"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_supplies_batteries_date_given'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_supplies_batteries_date_given' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_supplies_batteries_date_given' AS INT))
         );;
    }
    dimension: c_supplies_batteries_quantity_given {
        label: "Quantity Given"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_supplies_batteries_quantity_given'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_supplies_batteries_quantity_given' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_supplies_batteries_quantity_given' AS INT))
         );;
    }
    ######## End: Assessment Questions ############

}