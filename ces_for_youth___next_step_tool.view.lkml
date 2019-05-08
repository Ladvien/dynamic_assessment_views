include: "interface_custom_assessments.view.lkml"
view: ces_for_youth___next_step_tool {

	extends: [interface_custom_assessments]

	sql_table_name: client_assessment_data;;

	dimension: id {
        label: "Id -- CES for Youth - Next Step Tool"
        primary_key: yes
        sql: ${TABLE}.id;;
    }

	######## Begin: Assessment Questions ############

	dimension: c_Contact_Phone_Type {
        label: "Contact Phone Type"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Contact_Phone_Type'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Contact_Phone_Type' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Contact_Phone_Type' AS INT))
         );;
    }
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
	dimension: c_Family_Email {
        label: "Email"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Family_Email'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Family_Email' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Family_Email' AS INT))
         );;
    }
	dimension: c_Family_First_Name {
        label: "First Name"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Family_First_Name'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Family_First_Name' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Family_First_Name' AS INT))
         );;
    }
	dimension: c_Family_Last_Name {
        label: "Last Name"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Family_Last_Name'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Family_Last_Name' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Family_Last_Name' AS INT))
         );;
    }
	dimension: c_Family_Phone {
        label: "Phone"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Family_Phone'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Family_Phone' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Family_Phone' AS INT))
         );;
    }
	dimension: c_Family_Contact_Type {
        label: "Contact Type"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Family_Contact_Type'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Family_Contact_Type' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Family_Contact_Type' AS INT))
         );;
    }
	dimension: c_Interviewer_Organization {
        label: "Interviewer's Organization"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Interviewer_Organization'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Interviewer_Organization' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Interviewer_Organization' AS INT))
         );;
    }
	dimension: c_Interviewer_Email {
        label: "Interviewer's Email"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Interviewer_Email'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Interviewer_Email' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Interviewer_Email' AS INT))
         );;
    }
	dimension: c_Interviewer_Phone {
        label: "Interviewer's Phone"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Interviewer_Phone'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Interviewer_Phone' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Interviewer_Phone' AS INT))
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
	dimension: c_Lived_Outside_Your_Home {
        label: "Have you ever lived outside of your home? By outside of your home, I mean a foster home, group home, or the home of a relative that you were placed by the court?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Lived_Outside_Your_Home'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Lived_Outside_Your_Home' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Lived_Outside_Your_Home' AS INT))
         );;
    }
	dimension: c_Had_Social_Worker_Or_Probation {
        label: "Do you or Did you have a social worker, probation officer, or both?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Had_Social_Worker_Or_Probation'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Had_Social_Worker_Or_Probation' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Had_Social_Worker_Or_Probation' AS INT))
         );;
    }
	dimension: c_Would_Sign_To_Confirm_Eligibility {
        label: "Would you be willing to sign off on a form to help us confirm if you’re eligible for additional services, housing and resources?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Would_Sign_To_Confirm_Eligibility'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Would_Sign_To_Confirm_Eligibility' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Would_Sign_To_Confirm_Eligibility' AS INT))
         );;
    }
	dimension: c_Seeking_Services_Because_Of_Safety {
        label: "Are you seeking services today because you are concerned about your immediate safety?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Seeking_Services_Because_Of_Safety'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Seeking_Services_Because_Of_Safety' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Seeking_Services_Because_Of_Safety' AS INT))
         );;
    }
	dimension: c_Receive_Or_Receive_Mental_health_program {
        label: "Are you currently receiving or have you ever received treatment at a mental health program/clinic?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Receive_Or_Receive_Mental_health_program'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Receive_Or_Receive_Mental_health_program' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Receive_Or_Receive_Mental_health_program' AS INT))
         );;
    }
	dimension: c_Mental_Health_Program_Name {
        label: "If yes, what is the name of the program/clinic?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Mental_Health_Program_Name'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Mental_Health_Program_Name' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Mental_Health_Program_Name' AS INT))
         );;
    }
	dimension: c_VA_Healthcare_Eligible {
        label: "To the best of your knowledge, do you think you are VA Healthcare eligible?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_VA_Healthcare_Eligible'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_VA_Healthcare_Eligible' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_VA_Healthcare_Eligible' AS INT))
         );;
    }
	dimension: c_How_Many_Times_DHS_Accessed {
        label: "How many times have you accessed services at the DHS site(s) in the last 12 months?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_How_Many_Times_DHS_Accessed'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_How_Many_Times_DHS_Accessed' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_How_Many_Times_DHS_Accessed' AS INT))
         );;
    }
	dimension: c_What_City_Stay_At_Night {
        label: "Client SPA"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_What_City_Stay_At_Night'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_What_City_Stay_At_Night' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_What_City_Stay_At_Night' AS INT))
         );;
    }
	dimension: c_Community_within_LA {
        label: "Community within LA SPA"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Community_within_LA'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Community_within_LA' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Community_within_LA' AS INT))
         );;
    }
	dimension: c_Lived_In_Long_Beach_Or_Santa_Monica {
        label: "Have you lived in Long Beach or Santa Monica for a year or more?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Lived_In_Long_Beach_Or_Santa_Monica'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Lived_In_Long_Beach_Or_Santa_Monica' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Lived_In_Long_Beach_Or_Santa_Monica' AS INT))
         );;
    }
	dimension: c_Anywhere_Not_Able_To_Live {
        label: "Is there anywhere you would not be able to live?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Anywhere_Not_Able_To_Live'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Anywhere_Not_Able_To_Live' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Anywhere_Not_Able_To_Live' AS INT))
         );;
    }
	dimension: c_If_Yes_Where {
        label: "If yes, where?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_If_Yes_Where'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_If_Yes_Where' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_If_Yes_Where' AS INT))
         );;
    }
	dimension: c_Evicted_From_Public_Housing_Unit {
        label: "Have you been evicted from a Public Housing Authority Unit? By evicted, I mean has a landlord ever requested you to leave the property? Have you ever received a 3-day notice to quit or vacate the property?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Evicted_From_Public_Housing_Unit'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Evicted_From_Public_Housing_Unit' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Evicted_From_Public_Housing_Unit' AS INT))
         );;
    }
	dimension: c_Convicted_Of_Meth_Production {
        label: "Have you ever been convicted of manufacturing or producing methamphetamine?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Convicted_Of_Meth_Production'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Convicted_Of_Meth_Production' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Convicted_Of_Meth_Production' AS INT))
         );;
    }
	dimension: c_Required_To_Register_As_Sex_Offender {
        label: "Are you required to register as a sex offender?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Required_To_Register_As_Sex_Offender'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Required_To_Register_As_Sex_Offender' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Required_To_Register_As_Sex_Offender' AS INT))
         );;
    }
	dimension: c_Convicted_Of_Arson {
        label: "Have you ever been convicted of Arson?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Convicted_Of_Arson'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Convicted_Of_Arson' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Convicted_Of_Arson' AS INT))
         );;
    }
	dimension: c_Time_Of_Day_Easiest_To_Find {
        label: "What time of day is easiest to find you there?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Time_Of_Day_Easiest_To_Find'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Time_Of_Day_Easiest_To_Find' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Time_Of_Day_Easiest_To_Find' AS INT))
         );;
    }
	dimension: c_Location_Of_Survey_SPA {
        label: "Location of Survey: SPA "
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Location_Of_Survey_SPA'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Location_Of_Survey_SPA' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Location_Of_Survey_SPA' AS INT))
         );;
    }
	dimension: c_Location_Of_Survey_Region {
        label: "Location of Survey:  Region"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Location_Of_Survey_Region'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Location_Of_Survey_Region' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Location_Of_Survey_Region' AS INT))
         );;
    }
	dimension: c_Location_Of_Survey_City_Community {
        label: "Location of Survey: City / Community"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Location_Of_Survey_City_Community'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Location_Of_Survey_City_Community' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Location_Of_Survey_City_Community' AS INT))
         );;
    }
	dimension: c_DHS_Health_Center_No_Care {
        label: "Does not go for care"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_DHS_Health_Center_No_Care'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_No_Care' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_No_Care' AS INT))
         );;
    }
	dimension: c_DHS_Health_Center_USC {
        label: "LAC + USC Med Center"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_DHS_Health_Center_USC'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_USC' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_USC' AS INT))
         );;
    }
	dimension: c_DHS_Health_Center_UCLA {
        label: "Harbor UCLA Med Center"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_DHS_Health_Center_UCLA'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_UCLA' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_UCLA' AS INT))
         );;
    }
	dimension: c_DHS_Health_Center_Rancho {
        label: "Rancho Los Amigos"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_DHS_Health_Center_Rancho'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_Rancho' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_Rancho' AS INT))
         );;
    }
	dimension: c_DHS_Health_Center_Martin {
        label: "Martin Luther King, Jr. Outpatient Center"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_DHS_Health_Center_Martin'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_Martin' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_Martin' AS INT))
         );;
    }
	dimension: c_DHS_Health_Center_High {
        label: "High Desert Regional Health Center"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_DHS_Health_Center_High'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_High' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_High' AS INT))
         );;
    }
	dimension: c_DHS_Health_Center_Monte {
        label: "El Monte Comprehensive Health Center"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_DHS_Health_Center_Monte'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_Monte' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_Monte' AS INT))
         );;
    }
	dimension: c_DHS_Health_Center_Edward {
        label: "Edward R. Roybal Comprehensive Health Center"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_DHS_Health_Center_Edward'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_Edward' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_Edward' AS INT))
         );;
    }
	dimension: c_DHS_Health_Center_Claude {
        label: "H. Claude Hudson Comprehensive Health Center"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_DHS_Health_Center_Claude'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_Claude' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_Claude' AS INT))
         );;
    }
	dimension: c_DHS_Health_Center_Olive {
        label: "Olive View Med Center"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_DHS_Health_Center_Olive'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_Olive' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_Olive' AS INT))
         );;
    }
	dimension: c_DHS_Health_Center_Hubert {
        label: "Hubert H. Humphrey Comprehensive Health Center"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_DHS_Health_Center_Hubert'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_Hubert' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_Hubert' AS INT))
         );;
    }
	dimension: c_DHS_Health_Center_MidValley {
        label: "Mid-Valley Comprehensive Health Center"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_DHS_Health_Center_MidValley'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_MidValley' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_MidValley' AS INT))
         );;
    }
	dimension: c_DHS_Health_Center_Antelope {
        label: "Antelope Valley Health Center"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_DHS_Health_Center_Antelope'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_Antelope' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_Antelope' AS INT))
         );;
    }
	dimension: c_DHS_Health_Center_Bellflower {
        label: "Bellflower Health Center"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_DHS_Health_Center_Bellflower'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_Bellflower' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_Bellflower' AS INT))
         );;
    }
	dimension: c_DHS_Health_Center_Other {
        label: "Other DHS clinic (Specify in Comment)"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_DHS_Health_Center_Other'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_Other' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_Other' AS INT))
         );;
    }
	dimension: c_DHS_Health_Center_Dollarhide {
        label: "Dollarhide Health Center"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_DHS_Health_Center_Dollarhide'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_Dollarhide' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_Dollarhide' AS INT))
         );;
    }
	dimension: c_DHS_Health_Center_Glendale {
        label: "Glendale Health Center"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_DHS_Health_Center_Glendale'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_Glendale' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_Glendale' AS INT))
         );;
    }
	dimension: c_DHS_Health_Center_La_Puente {
        label: "La Puente Health Center"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_DHS_Health_Center_La_Puente'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_La_Puente' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_La_Puente' AS INT))
         );;
    }
	dimension: c_DHS_Health_Center_Lake {
        label: "Lake Los Angeles Health Center"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_DHS_Health_Center_Lake'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_Lake' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_Lake' AS INT))
         );;
    }
	dimension: c_DHS_Health_Center_Little {
        label: "Little Rock Health Center"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_DHS_Health_Center_Little'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_Little' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_Little' AS INT))
         );;
    }
	dimension: c_DHS_Health_Center_San_Fernando {
        label: "San Fernando Health Center"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_DHS_Health_Center_San_Fernando'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_San_Fernando' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_San_Fernando' AS INT))
         );;
    }
	dimension: c_DHS_Health_Center_South_Antelope {
        label: "South Antelope Valley Health Center"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_DHS_Health_Center_South_Antelope'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_South_Antelope' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_South_Antelope' AS INT))
         );;
    }
	dimension: c_DHS_Health_Center_Wilmington {
        label: "Wilmington Health Center"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_DHS_Health_Center_Wilmington'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_Wilmington' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_Wilmington' AS INT))
         );;
    }
	dimension: c_DHS_Health_Center_Long_Beach {
        label: "Long Beach Comprehensive Health Center"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_DHS_Health_Center_Long_Beach'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_Long_Beach' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_Long_Beach' AS INT))
         );;
    }
	dimension: c_DHS_Health_Center_Other_Comment {
        label: "Comment"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_DHS_Health_Center_Other_Comment'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_Other_Comment' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_Other_Comment' AS INT))
         );;
    }
	dimension: c_Willing_To_Live_Shared_Housing_Shared_Room {
        label: "Willing a) Shared housing w/a shared room"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Willing_To_Live_Shared_Housing_Shared_Room'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Willing_To_Live_Shared_Housing_Shared_Room' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Willing_To_Live_Shared_Housing_Shared_Room' AS INT))
         );;
    }
	dimension: c_Willing_To_Live_Shared_Housing_Separate_Room {
        label: "Willing b) Shared housing w/separate rooms"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Willing_To_Live_Shared_Housing_Separate_Room'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Willing_To_Live_Shared_Housing_Separate_Room' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Willing_To_Live_Shared_Housing_Separate_Room' AS INT))
         );;
    }
	dimension: c_Willing_To_Live_Housing_2_Year_Support {
        label: "Willing c) Housing up to 2 years w/support services"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Willing_To_Live_Housing_2_Year_Support'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Willing_To_Live_Housing_2_Year_Support' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Willing_To_Live_Housing_2_Year_Support' AS INT))
         );;
    }
	dimension: c_Willing_To_Live_Long_Term_Support {
        label: "Willing d) Long-term housing w/support services"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Willing_To_Live_Long_Term_Support'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Willing_To_Live_Long_Term_Support' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Willing_To_Live_Long_Term_Support' AS INT))
         );;
    }
	dimension: c_Willing_To_Live_Move_W_Family {
        label: "Willing e) Moving with family"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Willing_To_Live_Move_W_Family'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Willing_To_Live_Move_W_Family' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Willing_To_Live_Move_W_Family' AS INT))
         );;
    }
	dimension: c_Willing_To_Live_Move_W_Friends {
        label: "Willing f) Moving with friends, not in a program"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Willing_To_Live_Move_W_Friends'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Willing_To_Live_Move_W_Friends' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Willing_To_Live_Move_W_Friends' AS INT))
         );;
    }
	dimension: c_Willing_To_Live_Program_With_Substance {
        label: "Willing g) Program with substance use treatment supports"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Willing_To_Live_Program_With_Substance'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Willing_To_Live_Program_With_Substance' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Willing_To_Live_Program_With_Substance' AS INT))
         );;
    }
	dimension: c_Willing_To_Live_Program_With_MH {
        label: "Willing h) Program with mental health services"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Willing_To_Live_Program_With_MH'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Willing_To_Live_Program_With_MH' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Willing_To_Live_Program_With_MH' AS INT))
         );;
    }
	dimension: c_Willing_To_Live_Apt_In_Community {
        label: "Willing i) Apartment in the community"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Willing_To_Live_Apt_In_Community'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Willing_To_Live_Apt_In_Community' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Willing_To_Live_Apt_In_Community' AS INT))
         );;
    }
	dimension: c_Willing_To_Live_Apt_W_Service {
        label: "Willing j) Apartment in a building with on-site services"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Willing_To_Live_Apt_W_Service'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Willing_To_Live_Apt_W_Service' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Willing_To_Live_Apt_W_Service' AS INT))
         );;
    }
	dimension: c_Willing_To_Live_Other {
        label: "Willing k) Other."
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Willing_To_Live_Other'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Willing_To_Live_Other' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Willing_To_Live_Other' AS INT))
         );;
    }
	dimension: c_Willing_To_Live_Other_Specify {
        label: "Willing Please explain:"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Willing_To_Live_Other_Specify'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Willing_To_Live_Other_Specify' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Willing_To_Live_Other_Specify' AS INT))
         );;
    }
	dimension: c_Prefer_To_Live_Shared_Housing_Shared_Room {
        label: "Prefer a) Shared housing w/a shared room"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Prefer_To_Live_Shared_Housing_Shared_Room'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Prefer_To_Live_Shared_Housing_Shared_Room' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Prefer_To_Live_Shared_Housing_Shared_Room' AS INT))
         );;
    }
	dimension: c_Prefer_To_Live_Shared_Housing_Separate_Room {
        label: "Prefer b) Shared housing w/separate rooms"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Prefer_To_Live_Shared_Housing_Separate_Room'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Prefer_To_Live_Shared_Housing_Separate_Room' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Prefer_To_Live_Shared_Housing_Separate_Room' AS INT))
         );;
    }
	dimension: c_Prefer_To_Live_Housing_2_Year_Support {
        label: "Prefer c) Housing up to 2 years w/support services"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Prefer_To_Live_Housing_2_Year_Support'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Prefer_To_Live_Housing_2_Year_Support' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Prefer_To_Live_Housing_2_Year_Support' AS INT))
         );;
    }
	dimension: c_Prefer_To_Live_Long_Term_Support {
        label: "Prefer d) Long-term housing w/support services"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Prefer_To_Live_Long_Term_Support'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Prefer_To_Live_Long_Term_Support' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Prefer_To_Live_Long_Term_Support' AS INT))
         );;
    }
	dimension: c_Prefer_To_Live_Move_W_Family {
        label: "Prefer e) Moving with family"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Prefer_To_Live_Move_W_Family'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Prefer_To_Live_Move_W_Family' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Prefer_To_Live_Move_W_Family' AS INT))
         );;
    }
	dimension: c_Prefer_To_Live_Move_W_Friends {
        label: "Prefer f) Moving with friends, not in a program"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Prefer_To_Live_Move_W_Friends'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Prefer_To_Live_Move_W_Friends' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Prefer_To_Live_Move_W_Friends' AS INT))
         );;
    }
	dimension: c_Prefer_To_Live_Program_With_Substance {
        label: "Prefer g) Program with substance use treatment supports"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Prefer_To_Live_Program_With_Substance'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Prefer_To_Live_Program_With_Substance' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Prefer_To_Live_Program_With_Substance' AS INT))
         );;
    }
	dimension: c_Prefer_To_Live_Program_With_MH {
        label: "Prefer h) Program with mental health services"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Prefer_To_Live_Program_With_MH'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Prefer_To_Live_Program_With_MH' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Prefer_To_Live_Program_With_MH' AS INT))
         );;
    }
	dimension: c_Prefer_To_Live_Apt_In_Community {
        label: "Prefer i) Apartment in the community"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Prefer_To_Live_Apt_In_Community'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Prefer_To_Live_Apt_In_Community' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Prefer_To_Live_Apt_In_Community' AS INT))
         );;
    }
	dimension: c_Prefer_To_Live_Apt_W_Service {
        label: "Prefer j) Apartment in a building with on-site services"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Prefer_To_Live_Apt_W_Service'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Prefer_To_Live_Apt_W_Service' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Prefer_To_Live_Apt_W_Service' AS INT))
         );;
    }
	dimension: c_Prefer_To_Live_Other {
        label: "Prefer k) Other."
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Prefer_To_Live_Other'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Prefer_To_Live_Other' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Prefer_To_Live_Other' AS INT))
         );;
    }
	dimension: c_Prefer_To_Live_Other_Specify {
        label: "Prefer Please explain:"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Prefer_To_Live_Other_Specify'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Prefer_To_Live_Other_Specify' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Prefer_To_Live_Other_Specify' AS INT))
         );;
    }
	dimension: c_Error_No_DHS_Option_Checked {
        label: "Please select at least one DHS checkbox in Question 49."
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Error_No_DHS_Option_Checked'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Error_No_DHS_Option_Checked' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Error_No_DHS_Option_Checked' AS INT))
         );;
    }
	dimension: c_Error_No_Preferred_Housing_Option_Checked {
        label: "Please select at least one housing option in Question 52."
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Error_No_Preferred_Housing_Option_Checked'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Error_No_Preferred_Housing_Option_Checked' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Error_No_Preferred_Housing_Option_Checked' AS INT))
         );;
    }
	dimension: c_Error_No_Willing_Housing_Option_Checked {
        label: "Please select at least one housing option in Question 51."
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Error_No_Willing_Housing_Option_Checked'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Error_No_Willing_Housing_Option_Checked' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Error_No_Willing_Housing_Option_Checked' AS INT))
         );;
    }
	dimension: c_Age_Arrived {
        label: "If yes, how old were you when you went there?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Age_Arrived'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Age_Arrived' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Age_Arrived' AS INT))
         );;
    }
	dimension: c_Client_Destination {
        label: "When you left, where did you go?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Client_Destination'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Client_Destination' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Client_Destination' AS INT))
         );;
    }
	dimension: c_Participant_ADA_Need {
        label: "Participant ADA Need"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Participant_ADA_Need'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Participant_ADA_Need' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Participant_ADA_Need' AS INT))
         );;
    }
	dimension: c_Staff_Observation_ADA_Need_Mobility {
        label: "Staff Observation ADA Need Mobility"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Staff_Observation_ADA_Need_Mobility'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Staff_Observation_ADA_Need_Mobility' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Staff_Observation_ADA_Need_Mobility' AS INT))
         );;
    }
	dimension: c_Staff_Observation_ADA_Need_Hearing {
        label: "Staff Observation ADA Need Hearing"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Staff_Observation_ADA_Need_Hearing'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Staff_Observation_ADA_Need_Hearing' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Staff_Observation_ADA_Need_Hearing' AS INT))
         );;
    }
	dimension: c_Staff_Observation_ADA_Need_Visual {
        label: "Staff Observation ADA Need Visual"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Staff_Observation_ADA_Need_Visual'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Staff_Observation_ADA_Need_Visual' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Staff_Observation_ADA_Need_Visual' AS INT))
         );;
    }
	dimension: c_Staff_Observation_ADA_Need_None {
        label: "Staff Observation ADA Need None"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Staff_Observation_ADA_Need_None'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Staff_Observation_ADA_Need_None' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Staff_Observation_ADA_Need_None' AS INT))
         );;
    }
	dimension: c_Staff_Observation_ADA_need_Communication {
        label: "Staff Observation ADA need Communication"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Staff_Observation_ADA_need_Communication'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Staff_Observation_ADA_need_Communication' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Staff_Observation_ADA_need_Communication' AS INT))
         );;
    }
	dimension: c_Interest_In_Building_Family_Relationship {
        label: "51. Are you interested in receiving support to build or strengthen your relationship with family? Please note that 'family' refers to both biological and non-biological. "
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Interest_In_Building_Family_Relationship'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Interest_In_Building_Family_Relationship' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Interest_In_Building_Family_Relationship' AS INT))
         );;
    }
	######## End: Assessment Questions ############

}