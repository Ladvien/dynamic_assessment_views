include: "interface_custom_assessments.view.lkml"
view: childrens_cabinet_inc_health_amp_safety_screen_ {

    extends: [interface_custom_assessments]

    sql_table_name: client_assessment_data;;

    dimension: id {
        primary_key: yes
        sql: ${TABLE}.id;;
    }
    ######## Begin: Assessment Questions ############

    dimension: c_annual_visit_due_date {
        label: "Annual Visit Due Date"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_annual_visit_due_date'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_annual_visit_due_date' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_annual_visit_due_date' AS INT))
         );;
    }
    dimension: c_follow_up_need {
        label: "Follow-up needed?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_follow_up_need'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_follow_up_need' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_follow_up_need' AS INT))
         );;
    }
    dimension: c_visit_actual_date {
        label: "Actual Visit Date1"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_visit_actual_date'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_visit_actual_date' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_visit_actual_date' AS INT))
         );;
    }
    dimension: c_visit_days_to_next_visit {
        label: "Number of Days Until Next Visit?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_visit_days_to_next_visit'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_visit_days_to_next_visit' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_visit_days_to_next_visit' AS INT))
         );;
    }
    dimension: c_visit_next_due_date {
        label: "Next Visit Due Date "
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_visit_next_due_date'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_visit_next_due_date' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_visit_next_due_date' AS INT))
         );;
    }
    dimension: c_visit_scheduled_date {
        label: "Visit Due Date"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_visit_scheduled_date'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_visit_scheduled_date' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_visit_scheduled_date' AS INT))
         );;
    }
    dimension: c_visit_staff_conducting {
        label: "Staff Conducting Visit "
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_visit_staff_conducting'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_visit_staff_conducting' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_visit_staff_conducting' AS INT))
         );;
    }
    dimension: c_visit_type {
        label: "Visit Type"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_visit_type'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_visit_type' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_visit_type' AS INT))
         );;
    }
    dimension: c_visit_unannounced {
        label: "Visit Unannounced?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_visit_unannounced'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_visit_unannounced' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_visit_unannounced' AS INT))
         );;
    }
    ######## End: Assessment Questions ############

}