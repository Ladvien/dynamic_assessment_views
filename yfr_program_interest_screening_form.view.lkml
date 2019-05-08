include: "//clarity_basemodel/explore_hmis_performance.view.lkml"
view: yfr_program_interest_screening_form {

	extends: [interface_custom_assessments]

	sql_table_name: client_assessment_data;;

	dimension: id {
        label: "Id -- YFR Program Interest Screening Form"
        primary_key: yes
        sql: ${TABLE}.id;;
    }
	######## Begin: Assessment Questions ############

	dimension: c_Between_16_24 {
        label: "4. Are you between the ages of 16-24?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Between_16_24'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Between_16_24' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Between_16_24' AS INT))
         );;
    }
	dimension: c_Currently_in_LA_county {
        label: "5. Are you currently living in Los Angeles County?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Currently_in_LA_county'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Currently_in_LA_county' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Currently_in_LA_county' AS INT))
         );;
    }
	dimension: c_Doesnt_Have_a_Family_Member_Identified {
        label: "Doesn't Have a Family Member Identified"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Doesnt_Have_a_Family_Member_Identified'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Doesnt_Have_a_Family_Member_Identified' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Doesnt_Have_a_Family_Member_Identified' AS INT))
         );;
    }
	dimension: c_Doesnt_have_time {
        label: "Doesn't Have Time"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Doesnt_have_time'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Doesnt_have_time' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Doesnt_have_time' AS INT))
         );;
    }
	dimension: c_Enrollment_status {
        label: "Enrollment Status"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Enrollment_status'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Enrollment_status' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Enrollment_status' AS INT))
         );;
    }
	dimension: c_Interested_in_participating {
        label: "2a. Now that I have discussed the Connect LA program, are you interested in participating in Connect LA?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Interested_in_participating'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Interested_in_participating' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Interested_in_participating' AS INT))
         );;
    }
	dimension: c_Other_reason {
        label: "Other Reason: "
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Other_reason'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Other_reason' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Other_reason' AS INT))
         );;
    }
	dimension: c_Permission_to_discuss {
        label: "1. Do I have your permission to discuss the program with you?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Permission_to_discuss'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Permission_to_discuss' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Permission_to_discuss' AS INT))
         );;
    }
	dimension: c_Permission_to_move_forward {
        label: "3. I am going to ask you a set of questions to inquire about eligibility for the program. Do I have your permission to move forward?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Permission_to_move_forward'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Permission_to_move_forward' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Permission_to_move_forward' AS INT))
         );;
    }
	dimension: c_Program_different_than_thought {
        label: "Program is Different than Originally Thought"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Program_different_than_thought'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Program_different_than_thought' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Program_different_than_thought' AS INT))
         );;
    }
	dimension: c_Would_be_Interested_at_a_Later_Time {
        label: "Would be Interested at a Later Time"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Would_be_Interested_at_a_Later_Time'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Would_be_Interested_at_a_Later_Time' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Would_be_Interested_at_a_Later_Time' AS INT))
         );;
    }
	######## End: Assessment Questions ############

}