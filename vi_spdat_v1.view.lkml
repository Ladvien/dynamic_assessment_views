include: "interface_custom_assessments.view.lkml"
view: vi_spdat_v1 {

    extends: [interface_custom_assessments]

    sql_table_name: client_assessment_data;;

    dimension: id {
        label: "Id -- VI-SPDAT v1"
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
    dimension: c_VI_SPDAT_V1_Client_Support {
        label: "Is the client already receiving supportive services that can/will follow him/her into permanent housing?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_VI_SPDAT_V1_Client_Support'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_VI_SPDAT_V1_Client_Support' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_VI_SPDAT_V1_Client_Support' AS INT))
         );;
    }
    dimension: c_VI_SPDAT_V1_Client_Support_Agency {
        label: "If yes, what agency provides those supportive services?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_VI_SPDAT_V1_Client_Support_Agency'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_VI_SPDAT_V1_Client_Support_Agency' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_VI_SPDAT_V1_Client_Support_Agency' AS INT))
         );;
    }
    dimension: c_VI_SPDAT_V1_Food_Public_Kitchen_Name {
        label: "What is the name of that place? (Again, answer may come up later too)"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_VI_SPDAT_V1_Food_Public_Kitchen_Name'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_VI_SPDAT_V1_Food_Public_Kitchen_Name' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_VI_SPDAT_V1_Food_Public_Kitchen_Name' AS INT))
         );;
    }
    dimension: c_Enrolled_DMH_Program {
        label: "Enrolled in a DMH Program"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Enrolled_DMH_Program'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Enrolled_DMH_Program' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Enrolled_DMH_Program' AS INT))
         );;
    }
    dimension: c_DMH_Clinics_Visited {
        label: "DMH Clinics Visited"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_DMH_Clinics_Visited'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_DMH_Clinics_Visited' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_DMH_Clinics_Visited' AS INT))
         );;
    }
    dimension: c_DMH_Clinic_Last_Visit_Timeframe {
        label: "DMH Clinic Last Visit Timeframe"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_DMH_Clinic_Last_Visit_Timeframe'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_DMH_Clinic_Last_Visit_Timeframe' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_DMH_Clinic_Last_Visit_Timeframe' AS INT))
         );;
    }
    dimension: c_Current_Previous_Menta_Health {
        label: "Current or Previous Mental Health"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Current_Previous_Menta_Health'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Current_Previous_Menta_Health' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Current_Previous_Menta_Health' AS INT))
         );;
    }
    dimension: c_Mental_Health_Last_Date {
        label: "Last Date Received Mental Health Services"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Mental_Health_Last_Date'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Mental_Health_Last_Date' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Mental_Health_Last_Date' AS INT))
         );;
    }
    dimension: c_Assessment_Time {
        label: "Assessment Time"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Assessment_Time'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Assessment_Time' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Assessment_Time' AS INT))
         );;
    }
    dimension: c_CES_Client {
        label: "CES Client"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_CES_Client'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_CES_Client' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_CES_Client' AS INT))
         );;
    }
    ######## End: Assessment Questions ############

}