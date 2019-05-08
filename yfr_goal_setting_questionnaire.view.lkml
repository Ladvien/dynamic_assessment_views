include: "interface_custom_assessments.view.lkml"
view: yfr_goal_setting_questionnaire {

	extends: [interface_custom_assessments]

	sql_table_name: client_assessment_data;;

	dimension: id {
        label: "Id -- YFR Goal Setting Questionnaire"
        primary_key: yes
        sql: ${TABLE}.id;;
    }

	######## Begin: Assessment Questions ############

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
	dimension: c_Housing_assistance_received {
        label: "If Yes, Describe your Housing Assistance:"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Housing_assistance_received'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Housing_assistance_received' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Housing_assistance_received' AS INT))
         );;
    }
	dimension: c_Housing_barrier_1 {
        label: "Barrier 1:"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Housing_barrier_1'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Housing_barrier_1' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Housing_barrier_1' AS INT))
         );;
    }
	dimension: c_Housing_barrier_2 {
        label: "Barrier 2:"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Housing_barrier_2'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Housing_barrier_2' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Housing_barrier_2' AS INT))
         );;
    }
	dimension: c_Housing_barrier_3 {
        label: "Barrier 3:"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Housing_barrier_3'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Housing_barrier_3' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Housing_barrier_3' AS INT))
         );;
    }
	dimension: c_Housing_barrier_4 {
        label: "Barrier 4:"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Housing_barrier_4'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Housing_barrier_4' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Housing_barrier_4' AS INT))
         );;
    }
	dimension: c_Housing_goals {
        label: "If Yes, Describe your Housing Goals:"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Housing_goals'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Housing_goals' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Housing_goals' AS INT))
         );;
    }
	dimension: c_Housing_goals_to_share {
        label: "2. Do you have any housing goals you would like to share?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Housing_goals_to_share'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Housing_goals_to_share' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Housing_goals_to_share' AS INT))
         );;
    }
	dimension: c_Housing_plan {
        label: "If Yes, Describe your Housing Plan:"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Housing_plan'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Housing_plan' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Housing_plan' AS INT))
         );;
    }
	dimension: c_Housing_plan_in_place {
        label: "1. Do you currently have a housing plan in place?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Housing_plan_in_place'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Housing_plan_in_place' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Housing_plan_in_place' AS INT))
         );;
    }
	dimension: c_Indiv1_contacts_in_month {
        label: "4. In the past month, how many times have you and individual 1 been in contact?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Indiv1_contacts_in_month'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Indiv1_contacts_in_month' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Indiv1_contacts_in_month' AS INT))
         );;
    }
	dimension: c_Indiv1_count_on {
        label: "5. To what extent do you feel that you can count on individual 1 to be there for you when you need him/her?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Indiv1_count_on'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Indiv1_count_on' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Indiv1_count_on' AS INT))
         );;
    }
	dimension: c_Indiv1_goal_1 {
        label: "Individual 1 Goal 1:"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Indiv1_goal_1'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Indiv1_goal_1' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Indiv1_goal_1' AS INT))
         );;
    }
	dimension: c_Indiv1_goal_2 {
        label: "Individual 1 Goal 2:"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Indiv1_goal_2'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Indiv1_goal_2' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Indiv1_goal_2' AS INT))
         );;
    }
	dimension: c_Indiv1_goal_3 {
        label: "Individual 1 Goal 3:"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Indiv1_goal_3'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Indiv1_goal_3' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Indiv1_goal_3' AS INT))
         );;
    }
	dimension: c_Indiv1_ideal_relationship {
        label: "7. What would an ideal relationship with individual 1 look like?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Indiv1_ideal_relationship'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Indiv1_ideal_relationship' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Indiv1_ideal_relationship' AS INT))
         );;
    }
	dimension: c_Indiv1_name {
        label: "1. What is individual 1's name?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Indiv1_name'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Indiv1_name' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Indiv1_name' AS INT))
         );;
    }
	dimension: c_Indiv1_relationship {
        label: "2. What is individual 1’s role/relationship in your life (mother, father, sibling, teacher, close friend, etc.)?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Indiv1_relationship'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Indiv1_relationship' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Indiv1_relationship' AS INT))
         );;
    }
	dimension: c_Indiv1_relationship_strength {
        label: "3. At the present time, what is the strength of your relationship with individual 1?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Indiv1_relationship_strength'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Indiv1_relationship_strength' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Indiv1_relationship_strength' AS INT))
         );;
    }
	dimension: c_Indiv1_reunification_interest {
        label: "6. Are you interested in being reunified with individual 1?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Indiv1_reunification_interest'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Indiv1_reunification_interest' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Indiv1_reunification_interest' AS INT))
         );;
    }
	dimension: c_Indiv2_contacts_in_month {
        label: "4. In the past month, how many times have you and individual 2 been in contact?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Indiv2_contacts_in_month'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Indiv2_contacts_in_month' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Indiv2_contacts_in_month' AS INT))
         );;
    }
	dimension: c_Indiv2_count_on {
        label: "5. To what extent do you feel that you can count on individual 2 to be there for you when you need him/her?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Indiv2_count_on'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Indiv2_count_on' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Indiv2_count_on' AS INT))
         );;
    }
	dimension: c_Indiv2_goal_1 {
        label: "Individual 2 Goal 1:"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Indiv2_goal_1'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Indiv2_goal_1' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Indiv2_goal_1' AS INT))
         );;
    }
	dimension: c_Indiv2_goal_2 {
        label: "Individual 2 Goal 2:"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Indiv2_goal_2'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Indiv2_goal_2' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Indiv2_goal_2' AS INT))
         );;
    }
	dimension: c_Indiv2_goal_3 {
        label: "Individual 2 Goal 3:"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Indiv2_goal_3'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Indiv2_goal_3' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Indiv2_goal_3' AS INT))
         );;
    }
	dimension: c_Indiv2_ideal_relationship {
        label: "7. What would an ideal relationship with individual 2 look like?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Indiv2_ideal_relationship'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Indiv2_ideal_relationship' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Indiv2_ideal_relationship' AS INT))
         );;
    }
	dimension: c_Indiv2_name {
        label: "1. What is individual 2's name?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Indiv2_name'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Indiv2_name' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Indiv2_name' AS INT))
         );;
    }
	dimension: c_Indiv2_relationship {
        label: "2. What is individual 2’s role/relationship in your life (mother, father, sibling, teacher, close friend, etc.)?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Indiv2_relationship'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Indiv2_relationship' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Indiv2_relationship' AS INT))
         );;
    }
	dimension: c_Indiv2_relationship_strength {
        label: "3. At the present time, what is the strength of your relationship with individual 2?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Indiv2_relationship_strength'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Indiv2_relationship_strength' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Indiv2_relationship_strength' AS INT))
         );;
    }
	dimension: c_Indiv2_reunification_interest {
        label: "6. Are you interested in being reunified with individual 2?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Indiv2_reunification_interest'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Indiv2_reunification_interest' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Indiv2_reunification_interest' AS INT))
         );;
    }
	dimension: c_Indiv3_contacts_in_month {
        label: "4. In the past month, how many times have you and individual 3 been in contact?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Indiv3_contacts_in_month'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Indiv3_contacts_in_month' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Indiv3_contacts_in_month' AS INT))
         );;
    }
	dimension: c_Indiv3_count_on {
        label: "5. To what extent do you feel that you can count on individual 3 to be there for you when you need him/her?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Indiv3_count_on'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Indiv3_count_on' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Indiv3_count_on' AS INT))
         );;
    }
	dimension: c_Indiv3_goal_1 {
        label: "Individual 3 Goal 1:"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Indiv3_goal_1'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Indiv3_goal_1' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Indiv3_goal_1' AS INT))
         );;
    }
	dimension: c_Indiv3_goal_2 {
        label: "Individual 3 Goal 2:"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Indiv3_goal_2'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Indiv3_goal_2' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Indiv3_goal_2' AS INT))
         );;
    }
	dimension: c_Indiv3_goal_3 {
        label: "Individual 3 Goal 3:"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Indiv3_goal_3'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Indiv3_goal_3' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Indiv3_goal_3' AS INT))
         );;
    }
	dimension: c_Indiv3_ideal_relationship {
        label: "7. What would an ideal relationship with individual 3 look like?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Indiv3_ideal_relationship'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Indiv3_ideal_relationship' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Indiv3_ideal_relationship' AS INT))
         );;
    }
	dimension: c_Indiv3_name {
        label: "1. What is individual 3's name?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Indiv3_name'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Indiv3_name' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Indiv3_name' AS INT))
         );;
    }
	dimension: c_Indiv3_relationship {
        label: "2. What is individual 3’s role/relationship in your life (mother, father, sibling, teacher, close friend, etc.)?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Indiv3_relationship'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Indiv3_relationship' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Indiv3_relationship' AS INT))
         );;
    }
	dimension: c_Indiv3_relationship_strength {
        label: "3. At the present time, what is the strength of your relationship with individual 3?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Indiv3_relationship_strength'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Indiv3_relationship_strength' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Indiv3_relationship_strength' AS INT))
         );;
    }
	dimension: c_Indiv3_reunification_interest {
        label: "6. Are you interested in being reunified with individual 3?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Indiv3_reunification_interest'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Indiv3_reunification_interest' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Indiv3_reunification_interest' AS INT))
         );;
    }
	dimension: c_Interviewer_Name {
        label: "Interviewer's Name"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Interviewer_Name'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Interviewer_Name' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Interviewer_Name' AS INT))
         );;
    }
	dimension: c_Preferred_name {
        label: "Preferred Name"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Preferred_name'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Preferred_name' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Preferred_name' AS INT))
         );;
    }
	dimension: c_Receiving_housing_support {
        label: "3. Are you currently receiving any support or enrolled in a housing program that is assisting you in achieving any housing related goals?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Receiving_housing_support'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Receiving_housing_support' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Receiving_housing_support' AS INT))
         );;
    }
	dimension: c_When_housing_connection_hoped_for {
        label: "5. When do you hope to get connected to housing?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_When_housing_connection_hoped_for'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_When_housing_connection_hoped_for' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_When_housing_connection_hoped_for' AS INT))
         );;
    }
	######## End: Assessment Questions ############

}