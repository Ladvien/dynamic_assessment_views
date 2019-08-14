include: "interface_custom_assessments.view.lkml"
view: childrens_cabinet_ffn_annual_training_nates {

    extends: [interface_custom_assessments]

    sql_table_name: client_assessment_data;;

    dimension: id {
        primary_key: yes
        sql: ${TABLE}.id;;
    }
    ######## Begin: Assessment Questions ############

    dimension: custom_picklist {
        label: "Annual Training Core Knowledge Area "
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'custom_picklist'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'custom_picklist' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'custom_picklist' AS INT))
         );;
    }
    dimension: c_2annual_training_cka {
        label: "Annual Training Core Knowledge Area "
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_2annual_training_cka'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_2annual_training_cka' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_2annual_training_cka' AS INT))
         );;
    }
    dimension: c_annnual_training_date_completed3 {
        label: "Date Training Completed "
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_annnual_training_date_completed3'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_annnual_training_date_completed3' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_annnual_training_date_completed3' AS INT))
         );;
    }
    dimension: c_annual_training2 {
        label: "Annual Training Class Name"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_annual_training2'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_annual_training2' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_annual_training2' AS INT))
         );;
    }
    dimension: c_annual_training3 {
        label: "Annual Training Class Name 3"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_annual_training3'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_annual_training3' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_annual_training3' AS INT))
         );;
    }
    dimension: c_annual_training_4 {
        label: "Annual Training Class Name"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_annual_training_4'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_annual_training_4' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_annual_training_4' AS INT))
         );;
    }
    dimension: c_annual_training_cka3 {
        label: "Annual Training Core Knowledge Area 3"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_annual_training_cka3'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_annual_training_cka3' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_annual_training_cka3' AS INT))
         );;
    }
    dimension: c_annual_training_cka4 {
        label: "Annual Training Core Knowledge Area 4"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_annual_training_cka4'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_annual_training_cka4' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_annual_training_cka4' AS INT))
         );;
    }
    dimension: c_annual_training_date2_completed {
        label: "Annual Date Training 2 Completed"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_annual_training_date2_completed'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_annual_training_date2_completed' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_annual_training_date2_completed' AS INT))
         );;
    }
    dimension: c_annual_training_date_complete4 {
        label: "Annual Date Training Completed "
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_annual_training_date_complete4'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_annual_training_date_complete4' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_annual_training_date_complete4' AS INT))
         );;
    }
    dimension: c_annual_training_hours3 {
        label: "Class Hours 3"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_annual_training_hours3'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_annual_training_hours3' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_annual_training_hours3' AS INT))
         );;
    }
    dimension: c_annual_training_hours4 {
        label: "Annual Training Class Hours 4"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_annual_training_hours4'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_annual_training_hours4' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_annual_training_hours4' AS INT))
         );;
    }
    dimension: c_annual_training_registry_number {
        label: "Registry Number"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_annual_training_registry_number'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_annual_training_registry_number' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_annual_training_registry_number' AS INT))
         );;
    }
    dimension: c_annual_training_registry_number4 {
        label: "Annual Training Registry Number 4"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_annual_training_registry_number4'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_annual_training_registry_number4' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_annual_training_registry_number4' AS INT))
         );;
    }
    dimension: c_assessment_date_2 {
        label: "Annual Training Trigger Date 2"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_assessment_date_2'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_assessment_date_2' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_assessment_date_2' AS INT))
         );;
    }
    dimension: c_assessment_date_3 {
        label: "Annual Training Trigger Date 3"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_assessment_date_3'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_assessment_date_3' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_assessment_date_3' AS INT))
         );;
    }
    dimension: c_assessment_date_4 {
        label: "Annual Training Trigger Date 4"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_assessment_date_4'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_assessment_date_4' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_assessment_date_4' AS INT))
         );;
    }
    dimension: c_c_annual_training {
        label: "Annual Training"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_c_annual_training'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_c_annual_training' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_c_annual_training' AS INT))
         );;
    }
    dimension: c_c_annual_training_date_completed {
        label: "Annual Date Training Completed"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_c_annual_training_date_completed'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_c_annual_training_date_completed' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_c_annual_training_date_completed' AS INT))
         );;
    }
    dimension: c_c_annual_training_hours {
        label: "Annual Training Class Hours "
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_c_annual_training_hours'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_c_annual_training_hours' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_c_annual_training_hours' AS INT))
         );;
    }
    dimension: c_c_annual_training_registry_number {
        label: "Annual Training Registry Number"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_c_annual_training_registry_number'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_c_annual_training_registry_number' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_c_annual_training_registry_number' AS INT))
         );;
    }
    dimension: c_c_initial_training_target_hours {
        label: "Annual Training Target Hours "
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_c_initial_training_target_hours'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_c_initial_training_target_hours' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_c_initial_training_target_hours' AS INT))
         );;
    }
    dimension: c_Outstanding_Training_Hours {
        label: "Outstanding Training Hours"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Outstanding_Training_Hours'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Outstanding_Training_Hours' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Outstanding_Training_Hours' AS INT))
         );;
    }
    dimension: c_annual_training_hours2 {
        label: "Annual Training Class 2 Hours "
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_annual_training_hours2'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_annual_training_hours2' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_annual_training_hours2' AS INT))
         );;
    }
    dimension: c_annual_training_registry_number2 {
        label: "Annual Training Registry Number"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_annual_training_registry_number2'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_annual_training_registry_number2' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_annual_training_registry_number2' AS INT))
         );;
    }
    ######## End: Assessment Questions ############

}