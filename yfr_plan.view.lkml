include: "interface_custom_assessments.view.lkml"
view: yfr_plan {

    extends: [interface_custom_assessments]

    sql_table_name: client_assessment_data;;

    dimension: id {
        label: "Id -- YFR Plan"
        primary_key: yes
        sql: ${TABLE}.id;;
    }
    ######## Begin: Assessment Questions ############

    dimension: c_Anticipated_completion_date_1 {
        label: "Anticipated Completion Date 1"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Anticipated_completion_date_1'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Anticipated_completion_date_1' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Anticipated_completion_date_1' AS INT))
         );;
    }
    dimension: c_Anticipated_completion_date_2 {
        label: "Anticipated Completion Date 2"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Anticipated_completion_date_2'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Anticipated_completion_date_2' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Anticipated_completion_date_2' AS INT))
         );;
    }
    dimension: c_Anticipated_completion_date_4 {
        label: "Anticipated Completion Date 4"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Anticipated_completion_date_4'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Anticipated_completion_date_4' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Anticipated_completion_date_4' AS INT))
         );;
    }
    dimension: c_Anticipated_completion_date_5 {
        label: "Anticipated Completion Date 5"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Anticipated_completion_date_5'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Anticipated_completion_date_5' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Anticipated_completion_date_5' AS INT))
         );;
    }
    dimension: c_Anticipated_completion_date_6 {
        label: "Anticipated Completion Date 6"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Anticipated_completion_date_6'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Anticipated_completion_date_6' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Anticipated_completion_date_6' AS INT))
         );;
    }
    dimension: c_Anticipated_completion_date_7 {
        label: "Anticipated Completion Date 7"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Anticipated_completion_date_7'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Anticipated_completion_date_7' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Anticipated_completion_date_7' AS INT))
         );;
    }
    dimension: c_Date_goal_achieved_1 {
        label: "Date Goal Achieved 1"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Date_goal_achieved_1'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Date_goal_achieved_1' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Date_goal_achieved_1' AS INT))
         );;
    }
    dimension: c_Date_goal_achieved_2 {
        label: "Date Goal Achieved 2"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Date_goal_achieved_2'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Date_goal_achieved_2' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Date_goal_achieved_2' AS INT))
         );;
    }
    dimension: c_Date_goal_achieved_3 {
        label: "Date Goal Achieved 3"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Date_goal_achieved_3'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Date_goal_achieved_3' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Date_goal_achieved_3' AS INT))
         );;
    }
    dimension: c_Date_goal_achieved_4 {
        label: "Date Goal Achieved 4"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Date_goal_achieved_4'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Date_goal_achieved_4' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Date_goal_achieved_4' AS INT))
         );;
    }
    dimension: c_Date_goal_achieved_5 {
        label: "Date Goal Achieved 5"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Date_goal_achieved_5'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Date_goal_achieved_5' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Date_goal_achieved_5' AS INT))
         );;
    }
    dimension: c_Date_goal_achieved_6 {
        label: "Date Goal Achieved 6"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Date_goal_achieved_6'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Date_goal_achieved_6' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Date_goal_achieved_6' AS INT))
         );;
    }
    dimension: c_Date_goal_achieved_7 {
        label: "Date Goal Achieved 7"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Date_goal_achieved_7'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Date_goal_achieved_7' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Date_goal_achieved_7' AS INT))
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
    dimension: c_Goal_domain_1 {
        label: "Domain 1"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Goal_domain_1'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Goal_domain_1' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Goal_domain_1' AS INT))
         );;
    }
    dimension: c_Goal_domain_2 {
        label: "Domain 2"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Goal_domain_2'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Goal_domain_2' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Goal_domain_2' AS INT))
         );;
    }
    dimension: c_Goal_domain_3 {
        label: "Domain 3"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Goal_domain_3'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Goal_domain_3' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Goal_domain_3' AS INT))
         );;
    }
    dimension: c_Goal_domain_4 {
        label: "Domain 4"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Goal_domain_4'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Goal_domain_4' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Goal_domain_4' AS INT))
         );;
    }
    dimension: c_Goal_domain_5 {
        label: "Domain 5"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Goal_domain_5'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Goal_domain_5' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Goal_domain_5' AS INT))
         );;
    }
    dimension: c_Goal_domain_6 {
        label: "Domain 6"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Goal_domain_6'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Goal_domain_6' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Goal_domain_6' AS INT))
         );;
    }
    dimension: c_Goal_domain_7 {
        label: "Domain 7"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Goal_domain_7'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Goal_domain_7' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Goal_domain_7' AS INT))
         );;
    }
    ######## End: Assessment Questions ############

}