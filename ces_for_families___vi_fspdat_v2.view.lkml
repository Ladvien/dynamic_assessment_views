include: "//clarity_basemodel/explore_hmis_performance.view.lkml"
view: ces_for_families___vi_fspdat_v2 {

	extends: [interface_custom_assessments]

	sql_table_name: client_assessment_data;;

	dimension: id {
        label: "Id -- CES for Families - VI-FSPDAT v2"
        primary_key: yes
        sql: ${TABLE}.id;;
    }
	######## Begin: Assessment Questions ############

	dimension:   {
        label: " "
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = ' '
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, ' ' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, ' ' AS INT))
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
	dimension: c_How_Many_Months {
        label: "How Many Months (1 to 12+)"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_How_Many_Months'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_How_Many_Months' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_How_Many_Months' AS INT))
         );;
    }
	dimension: c_Currenlty_Residing_To_Be_Housed_There {
        label: "Is the region where you’re currently residing where you’re looking to be housed?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Currenlty_Residing_To_Be_Housed_There'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Currenlty_Residing_To_Be_Housed_There' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Currenlty_Residing_To_Be_Housed_There' AS INT))
         );;
    }
	dimension: c_SPA_List {
        label: "SPA List (1-8)"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_SPA_List'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_SPA_List' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_SPA_List' AS INT))
         );;
    }
	dimension: c_Interest_In_Shared_Housing {
        label: "Would you be interested in housing options such as shared housing, a room for rent, or sober living?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Interest_In_Shared_Housing'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Interest_In_Shared_Housing' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Interest_In_Shared_Housing' AS INT))
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
	dimension: c_Disability_List_Substance_Abuse {
        label: "Substance Abuse Disorder"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Disability_List_Substance_Abuse'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Disability_List_Substance_Abuse' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Disability_List_Substance_Abuse' AS INT))
         );;
    }
	dimension: c_Disability_List_Physical_Disability {
        label: "Physical disability"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Disability_List_Physical_Disability'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Disability_List_Physical_Disability' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Disability_List_Physical_Disability' AS INT))
         );;
    }
	dimension: c_Disability_List_Mental_Health {
        label: "Mental health disability"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Disability_List_Mental_Health'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Disability_List_Mental_Health' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Disability_List_Mental_Health' AS INT))
         );;
    }
	dimension: c_Disability_List_Developmental {
        label: "Developmental disability"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Disability_List_Developmental'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Disability_List_Developmental' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Disability_List_Developmental' AS INT))
         );;
    }
	dimension: c_Disability_List_Chronic {
        label: "Chronic physical illness"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Disability_List_Chronic'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Disability_List_Chronic' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Disability_List_Chronic' AS INT))
         );;
    }
	dimension: c_Disability_List_HIV {
        label: "HIV / AIDS"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Disability_List_HIV'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Disability_List_HIV' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Disability_List_HIV' AS INT))
         );;
    }
	dimension: c_Disability_List_None {
        label: "None of the above"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Disability_List_None'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Disability_List_None' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Disability_List_None' AS INT))
         );;
    }
	dimension: c_Disability_List_Doesnt_Know {
        label: "Client Doesn’t Know"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Disability_List_Doesnt_Know'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Disability_List_Doesnt_Know' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Disability_List_Doesnt_Know' AS INT))
         );;
    }
	dimension: c_Disability_List_Refused {
        label: "Client Refused"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Disability_List_Refused'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Disability_List_Refused' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Disability_List_Refused' AS INT))
         );;
    }
	dimension: c_SPA_City_List {
        label: "What other cities have you called home within the last year (last 12 months)?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_SPA_City_List'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_SPA_City_List' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_SPA_City_List' AS INT))
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
	dimension: c_Error_No_Condition {
        label: "Do you think you might have any of the following conditions?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Error_No_Condition'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Error_No_Condition' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Error_No_Condition' AS INT))
         );;
    }
	dimension: c_SPA_City_List_other {
        label: "If none of the above, what city have you called home within the last year (last 12 months)?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_SPA_City_List_other'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_SPA_City_List_other' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_SPA_City_List_other' AS INT))
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
	dimension: c_Error_No_Staff_ADA_Observation_Checked {
        label: " Please select at least one staff ADA observation in Question 59."
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Error_No_Staff_ADA_Observation_Checked'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Error_No_Staff_ADA_Observation_Checked' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Error_No_Staff_ADA_Observation_Checked' AS INT))
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
	######## End: Assessment Questions ############

}