include: "interface_custom_assessments.view.lkml"
view: yfr_monthly_update_form {

	extends: [interface_custom_assessments]

	sql_table_name: client_assessment_data;;

	dimension: id {
        label: "Id -- YFR Monthly Update Form"
        primary_key: yes
        sql: ${TABLE}.id;;
    }

	######## Begin: Assessment Questions ############

	dimension: c_Goals_number_on_YFR_plan_1 {
        label: "Goal's Number on YFR Plan 1"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Goals_number_on_YFR_plan_1'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Goals_number_on_YFR_plan_1' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Goals_number_on_YFR_plan_1' AS INT))
         );;
    }
	dimension: c_Goals_number_on_YFR_plan_2 {
        label: "Goal's Number on YFR Plan 2"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Goals_number_on_YFR_plan_2'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Goals_number_on_YFR_plan_2' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Goals_number_on_YFR_plan_2' AS INT))
         );;
    }
	dimension: c_Goals_number_on_YFR_plan_3 {
        label: "Goal's Number on YFR Plan 3"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Goals_number_on_YFR_plan_3'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Goals_number_on_YFR_plan_3' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Goals_number_on_YFR_plan_3' AS INT))
         );;
    }
	dimension: c_Goals_number_on_YFR_plan_4 {
        label: "Goal's Number on YFR Plan 4"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Goals_number_on_YFR_plan_4'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Goals_number_on_YFR_plan_4' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Goals_number_on_YFR_plan_4' AS INT))
         );;
    }
	dimension: c_Goals_number_on_YFR_plan_5 {
        label: "Goal's Number on YFR Plan 5"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Goals_number_on_YFR_plan_5'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Goals_number_on_YFR_plan_5' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Goals_number_on_YFR_plan_5' AS INT))
         );;
    }
	dimension: c_Goals_number_on_YFR_plan_6 {
        label: "Goal's Number on YFR Plan 6"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Goals_number_on_YFR_plan_6'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Goals_number_on_YFR_plan_6' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Goals_number_on_YFR_plan_6' AS INT))
         );;
    }
	dimension: c_Goals_number_on_YFR_plan_7 {
        label: "Goal's Number on YFR Plan 7"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Goals_number_on_YFR_plan_7'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Goals_number_on_YFR_plan_7' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Goals_number_on_YFR_plan_7' AS INT))
         );;
    }
	dimension: c_Goal_1 {
        label: "Goal 1:"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Goal_1'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Goal_1' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Goal_1' AS INT))
         );;
    }
	dimension: c_Goal_2 {
        label: "Goal 2:"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Goal_2'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Goal_2' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Goal_2' AS INT))
         );;
    }
	dimension: c_Goal_3 {
        label: "Goal 3:"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Goal_3'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Goal_3' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Goal_3' AS INT))
         );;
    }
	dimension: c_Goal_4 {
        label: "Goal 4:"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Goal_4'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Goal_4' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Goal_4' AS INT))
         );;
    }
	dimension: c_Goal_5 {
        label: "Goal 5"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Goal_5'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Goal_5' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Goal_5' AS INT))
         );;
    }
	dimension: c_Goal_6 {
        label: "Goal 6"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Goal_6'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Goal_6' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Goal_6' AS INT))
         );;
    }
	dimension: c_Goal_7 {
        label: "Goal 7"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Goal_7'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Goal_7' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Goal_7' AS INT))
         );;
    }
	dimension: c_Goal_category_1 {
        label: "Goal Category 1"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Goal_category_1'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Goal_category_1' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Goal_category_1' AS INT))
         );;
    }
	dimension: c_Goal_category_2 {
        label: "Goal Category 2"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Goal_category_2'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Goal_category_2' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Goal_category_2' AS INT))
         );;
    }
	dimension: c_Goal_category_3 {
        label: "Goal Category 3"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Goal_category_3'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Goal_category_3' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Goal_category_3' AS INT))
         );;
    }
	dimension: c_Goal_category_4 {
        label: "Goal Category 4"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Goal_category_4'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Goal_category_4' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Goal_category_4' AS INT))
         );;
    }
	dimension: c_Goal_category_5 {
        label: "Goal Category 5"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Goal_category_5'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Goal_category_5' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Goal_category_5' AS INT))
         );;
    }
	dimension: c_Goal_category_6 {
        label: "Goal Category 6"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Goal_category_6'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Goal_category_6' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Goal_category_6' AS INT))
         );;
    }
	dimension: c_Goal_category_7 {
        label: "Goal Category 7"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Goal_category_7'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Goal_category_7' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Goal_category_7' AS INT))
         );;
    }
	dimension: c_Goal_status_1 {
        label: "Status 1"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Goal_status_1'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Goal_status_1' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Goal_status_1' AS INT))
         );;
    }
	dimension: c_Goal_status_2 {
        label: "Status 2"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Goal_status_2'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Goal_status_2' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Goal_status_2' AS INT))
         );;
    }
	dimension: c_Goal_status_3 {
        label: "Status 3"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Goal_status_3'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Goal_status_3' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Goal_status_3' AS INT))
         );;
    }
	dimension: c_Goal_status_4 {
        label: "Status 4"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Goal_status_4'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Goal_status_4' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Goal_status_4' AS INT))
         );;
    }
	dimension: c_Goal_status_5 {
        label: "Status 5"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Goal_status_5'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Goal_status_5' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Goal_status_5' AS INT))
         );;
    }
	dimension: c_Goal_status_6 {
        label: "Status 6"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Goal_status_6'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Goal_status_6' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Goal_status_6' AS INT))
         );;
    }
	dimension: c_Goal_status_7 {
        label: "Status 7"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Goal_status_7'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Goal_status_7' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Goal_status_7' AS INT))
         );;
    }
	######## End: Assessment Questions ############

}