include: "//clarity_basemodel/interface_custom_assessments.view.lkml"
view: vi_fspdat_v1 {

	extends: [interface_custom_assessments]

	sql_table_name: client_assessment_data;;

	dimension: id {
        label: "Id -- VI-FSPDAT v1"
        primary_key: yes
        sql: ${TABLE}.id;;
    }
	######## Begin: Assessment Questions ############

	dimension: c_Family_Score {
        label: "Family Unit Score:"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Family_Score'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Family_Score' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Family_Score' AS INT))
         );;
    }
	dimension: c_Functions_Score {
        label: "Socialization and Daily Functions Score:"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Functions_Score'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Functions_Score' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Functions_Score' AS INT))
         );;
    }
	dimension: c_Grand_Total {
        label: "Grand Total:"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Grand_Total'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Grand_Total' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Grand_Total' AS INT))
         );;
    }
	dimension: c_Health_Wellness_Score {
        label: "Wellness Score:"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Health_Wellness_Score'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Health_Wellness_Score' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Health_Wellness_Score' AS INT))
         );;
    }
	dimension: c_Housing_Score {
        label: "History of Housing and Homelessness Score:"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Housing_Score'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Housing_Score' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Housing_Score' AS INT))
         );;
    }
	dimension: c_Pre_Survey_Score {
        label: "Pre-Survey Score:"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Pre_Survey_Score'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Pre_Survey_Score' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Pre_Survey_Score' AS INT))
         );;
    }
	dimension: c_Risks_Score {
        label: "Risks Score:"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Risks_Score'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Risks_Score' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Risks_Score' AS INT))
         );;
    }
	######## End: Assessment Questions ############

}