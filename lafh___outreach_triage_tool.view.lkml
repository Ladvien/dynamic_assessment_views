include: "interface_custom_assessments.view.lkml"
view: lafh___outreach_triage_tool {

	extends: [interface_custom_assessments]

	sql_table_name: client_assessment_data;;

	dimension: id {
        view_label: "LAFH - Outreach Triage Tool"
        label: "Id -- LAFH - Outreach Triage Tool"
        primary_key: yes
        sql: ${TABLE}.id;;
    }
	######## Begin: Assessment Questions ############

	dimension: c_Contact_Phone {
        label: "Contact Phone"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Contact_Phone'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Contact_Phone' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Contact_Phone' AS INT))
         );;
    }
	dimension: c_Contact_Email {
        label: "Contact Email"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Contact_Email'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Contact_Email' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Contact_Email' AS INT))
         );;
    }
	dimension: c_Household_Size {
        label: "Household size"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Household_Size'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Household_Size' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Household_Size' AS INT))
         );;
    }
	dimension: c_Referral_by_Name {
        label: "Name"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Referral_by_Name'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Referral_by_Name' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Referral_by_Name' AS INT))
         );;
    }
	dimension: c_Referral_by_LAFH_Location {
        label: "Location"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Referral_by_LAFH_Location'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Referral_by_LAFH_Location' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Referral_by_LAFH_Location' AS INT))
         );;
    }
	dimension: c_Other_Referral_Source {
        label: "Other Referral Source"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Other_Referral_Source'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Other_Referral_Source' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Other_Referral_Source' AS INT))
         );;
    }
	dimension: c_Population {
        label: "Population"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Population'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Population' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Population' AS INT))
         );;
    }
	dimension: c_Medical_Services_Desired {
        label: "Medical"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Medical_Services_Desired'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Medical_Services_Desired' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Medical_Services_Desired' AS INT))
         );;
    }
	dimension: c_Basic_Needs_Desired {
        label: "Basic Needs (Showers / Clothing, Food, Haircut, etc.)"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Basic_Needs_Desired'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Basic_Needs_Desired' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Basic_Needs_Desired' AS INT))
         );;
    }
	dimension: c_Benefits_Desired {
        label: "Benefits (GR, SSI, etc.)"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Benefits_Desired'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Benefits_Desired' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Benefits_Desired' AS INT))
         );;
    }
	dimension: c_Housing_Desired {
        label: "Housing / Shelter"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Housing_Desired'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Housing_Desired' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Housing_Desired' AS INT))
         );;
    }
	dimension: c_Employment_Services_Desired {
        label: "Employment"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Employment_Services_Desired'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Employment_Services_Desired' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Employment_Services_Desired' AS INT))
         );;
    }
	dimension: c_DMV_Services_Desired {
        label: "DMV"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_DMV_Services_Desired'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_DMV_Services_Desired' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_DMV_Services_Desired' AS INT))
         );;
    }
	dimension: c_Legal_Services_Desired {
        label: "Legal"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Legal_Services_Desired'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Legal_Services_Desired' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Legal_Services_Desired' AS INT))
         );;
    }
	dimension: c_Other_Services_Desired {
        label: "Other Services Desired"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Other_Services_Desired'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Other_Services_Desired' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Other_Services_Desired' AS INT))
         );;
    }
	dimension: c_Other_Service_Desired_Text {
        label: "Other Service"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Other_Service_Desired_Text'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Other_Service_Desired_Text' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Other_Service_Desired_Text' AS INT))
         );;
    }
	dimension: c_Where_sleep_last_night {
        label: "Where did you sleep last night?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Where_sleep_last_night'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Where_sleep_last_night' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Where_sleep_last_night' AS INT))
         );;
    }
	dimension: c_Other_Sleep_Location {
        label: "Other Sleeping Location"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Other_Sleep_Location'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Other_Sleep_Location' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Other_Sleep_Location' AS INT))
         );;
    }
	dimension: c_Sleep_City {
        label: "4. In which city/neighborhood did you sleep last night?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Sleep_City'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Sleep_City' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Sleep_City' AS INT))
         );;
    }
	dimension: c_Currently_Employed {
        label: "5. Are you currently employed?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Currently_Employed'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Currently_Employed' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Currently_Employed' AS INT))
         );;
    }
	dimension: c_Cash_Assistance_Received {
        label: "6. Do you receive any cash assistance? (Doesn’t include food stamps/CalFresh)"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Cash_Assistance_Received'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Cash_Assistance_Received' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Cash_Assistance_Received' AS INT))
         );;
    }
	dimension: c_Specify_Other_Cash_Assistance {
        label: "Specify Other Cash Assistance"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Specify_Other_Cash_Assistance'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Specify_Other_Cash_Assistance' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Specify_Other_Cash_Assistance' AS INT))
         );;
    }
	dimension: c_Monthly_Cash_Assistance_Amount {
        label: "Monthly Amount"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Monthly_Cash_Assistance_Amount'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Monthly_Cash_Assistance_Amount' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Monthly_Cash_Assistance_Amount' AS INT))
         );;
    }
	dimension: c_Interested_In_CES_Assessment {
        label: "Is the participant interested in a CES Assessment? (a survey to determine housing needs – NOT a linkage to a housing resource)        If yes, please help guide them to a Housing Specialist (CES table) at the event."
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Interested_In_CES_Assessment'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Interested_In_CES_Assessment' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Interested_In_CES_Assessment' AS INT))
         );;
    }
	dimension: c_Additional_Notes {
        label: "Additional Notes"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Additional_Notes'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Additional_Notes' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Additional_Notes' AS INT))
         );;
    }
	dimension: c_Referral_Source {
        label: "Referral Source"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Referral_Source'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Referral_Source' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Referral_Source' AS INT))
         );;
    }
	dimension: c_Homeless_Connect_First_or_Repeat {
        label: "Homeless Connect"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Homeless_Connect_First_or_Repeat'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Homeless_Connect_First_or_Repeat' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Homeless_Connect_First_or_Repeat' AS INT))
         );;
    }
	dimension: c_Outcome_Diverted {
        label: "Diverted to family/friends"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Outcome_Diverted'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Outcome_Diverted' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Outcome_Diverted' AS INT))
         );;
    }
	dimension: c_Outcome_Sched_Assessment {
        label: "Scheduled standardized assessment"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Outcome_Sched_Assessment'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Outcome_Sched_Assessment' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Outcome_Sched_Assessment' AS INT))
         );;
    }
	dimension: c_Outcome_Received_Info {
        label: "Received general housing information"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Outcome_Received_Info'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Outcome_Received_Info' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Outcome_Received_Info' AS INT))
         );;
    }
	dimension: c_Outcome_Completed_CES {
        label: "Completed CES Part 1 & 2"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Outcome_Completed_CES'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Outcome_Completed_CES' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Outcome_Completed_CES' AS INT))
         );;
    }
	dimension: c_Outcome_Met_HN {
        label: "Met with Housing Navigator"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Outcome_Met_HN'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Outcome_Met_HN' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Outcome_Met_HN' AS INT))
         );;
    }
	dimension: c_Outcome_Appt_For_Svcs {
        label: "Appointment for other services"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Outcome_Appt_For_Svcs'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Outcome_Appt_For_Svcs' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Outcome_Appt_For_Svcs' AS INT))
         );;
    }
	dimension: c_Outcome_Appt_Explanation {
        label: "(Explanation of Appointment)"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Outcome_Appt_Explanation'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Outcome_Appt_Explanation' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Outcome_Appt_Explanation' AS INT))
         );;
    }
	dimension: c_Referral_Followup {
        label: "Referral Follow-up"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Referral_Followup'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Referral_Followup' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Referral_Followup' AS INT))
         );;
    }
	######## End: Assessment Questions ############

}