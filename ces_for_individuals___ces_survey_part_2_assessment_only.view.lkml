include: "interface_custom_assessments.view.lkml"
view: ces_for_individuals___ces_survey_part_2_assessment_only {

    extends: [interface_custom_assessments]

    sql_table_name: client_assessment_data;;

    dimension: id {
        label: "Id -- CES for Individuals - CES Survey Part 2 (Assessment Only)"
        primary_key: yes
        sql: ${TABLE}.id;;
    }
    ######## Begin: Assessment Questions ############

    dimension: c_Youth_Runaway {
        label: "Ran away from home or a foster care home"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Youth_Runaway'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Youth_Runaway' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Youth_Runaway' AS INT))
         );;
    }
    dimension: c_Adult_Probation {
        label: "Been on adult probation"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Adult_Probation'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Adult_Probation' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Adult_Probation' AS INT))
         );;
    }
    dimension: c_TAY_Youth {
        label: "TAY Youth"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_TAY_Youth'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_TAY_Youth' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_TAY_Youth' AS INT))
         );;
    }
    dimension: c_Insurance_Provider {
        label: "Health Insurance Provider"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Insurance_Provider'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Insurance_Provider' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Insurance_Provider' AS INT))
         );;
    }
    dimension: c_Error_Disability_No {
        label: "Error, client has a disability, please change Disability Status to Yes"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Error_Disability_No'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Error_Disability_No' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Error_Disability_No' AS INT))
         );;
    }
    dimension: c_Error_Disability_Yes {
        label: "Error, client does not have a disability, please change Disability Status to No or update one of the disability options to Yes (must be indefinite and substantially impair)."
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Error_Disability_Yes'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Error_Disability_Yes' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Error_Disability_Yes' AS INT))
         );;
    }
    dimension: c_Physical_Disability_Yes {
        label: "Physical Disability"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Physical_Disability_Yes'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Physical_Disability_Yes' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Physical_Disability_Yes' AS INT))
         );;
    }
    dimension: c_Developmental_Disability_Yes {
        label: "Developmental Disability"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Developmental_Disability_Yes'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Developmental_Disability_Yes' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Developmental_Disability_Yes' AS INT))
         );;
    }
    dimension: c_Chronic_Disability_Yes {
        label: "Chronic Health Condition"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Chronic_Disability_Yes'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Chronic_Disability_Yes' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Chronic_Disability_Yes' AS INT))
         );;
    }
    dimension: c_HIVAIDS_Disability_Yes {
        label: "HIV/AIDS"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_HIVAIDS_Disability_Yes'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_HIVAIDS_Disability_Yes' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_HIVAIDS_Disability_Yes' AS INT))
         );;
    }
    dimension: c_Mental_Disability_Yes {
        label: "Mental Health Condition"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Mental_Disability_Yes'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Mental_Disability_Yes' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Mental_Disability_Yes' AS INT))
         );;
    }
    dimension: c_Substance_Disability_Yes {
        label: "Substance Abuse"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Substance_Disability_Yes'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Substance_Disability_Yes' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Substance_Disability_Yes' AS INT))
         );;
    }
    dimension: c_Total_Disabilities {
        label: "Number of Disabilities"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Total_Disabilities'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Total_Disabilities' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Total_Disabilities' AS INT))
         );;
    }
    dimension: c_Error_Income {
        label: "Income Error"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Error_Income'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Error_Income' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Error_Income' AS INT))
         );;
    }
    dimension: c_Error_NonCash {
        label: "NonCash Error"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Error_NonCash'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Error_NonCash' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Error_NonCash' AS INT))
         );;
    }
    dimension: c_Error_Insurance {
        label: "Insurance Error"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Error_Insurance'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Error_Insurance' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Error_Insurance' AS INT))
         );;
    }
    dimension: c_Income_doc_GR_Form {
        label: "GR Form"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Income_doc_GR_Form'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Income_doc_GR_Form' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Income_doc_GR_Form' AS INT))
         );;
    }
    dimension: c_Income_doc_Pay_Stub {
        label: "Pay Stub"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Income_doc_Pay_Stub'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Income_doc_Pay_Stub' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Income_doc_Pay_Stub' AS INT))
         );;
    }
    dimension: c_Income_doc_Utility_Allowance {
        label: "Utility Allowance"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Income_doc_Utility_Allowance'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Income_doc_Utility_Allowance' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Income_doc_Utility_Allowance' AS INT))
         );;
    }
    dimension: c_Income_doc_Child_Support_Forms {
        label: "Child Support Forms"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Income_doc_Child_Support_Forms'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Income_doc_Child_Support_Forms' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Income_doc_Child_Support_Forms' AS INT))
         );;
    }
    dimension: c_Income_doc_Social_Security_Forms {
        label: "Social Security Forms"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Income_doc_Social_Security_Forms'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Income_doc_Social_Security_Forms' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Income_doc_Social_Security_Forms' AS INT))
         );;
    }
    dimension: c_Income_doc_SSI_Forms {
        label: "SSI Forms"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Income_doc_SSI_Forms'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Income_doc_SSI_Forms' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Income_doc_SSI_Forms' AS INT))
         );;
    }
    dimension: c_Income_doc_CalWORKs_Form {
        label: "CalWORKs Form"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Income_doc_CalWORKs_Form'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Income_doc_CalWORKs_Form' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Income_doc_CalWORKs_Form' AS INT))
         );;
    }
    dimension: c_Income_doc_Unemployment_Insurance_Forms {
        label: "Unemployment Insurance Forms"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Income_doc_Unemployment_Insurance_Forms'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Income_doc_Unemployment_Insurance_Forms' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Income_doc_Unemployment_Insurance_Forms' AS INT))
         );;
    }
    dimension: c_Income_doc_W2_Forms {
        label: "W-2 Forms"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Income_doc_W2_Forms'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Income_doc_W2_Forms' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Income_doc_W2_Forms' AS INT))
         );;
    }
    dimension: c_Income_doc_SSDI_Forms {
        label: "SSDI Forms"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Income_doc_SSDI_Forms'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Income_doc_SSDI_Forms' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Income_doc_SSDI_Forms' AS INT))
         );;
    }
    dimension: c_Income_doc_Workmans_Comp {
        label: "Workmans Comp"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Income_doc_Workmans_Comp'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Income_doc_Workmans_Comp' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Income_doc_Workmans_Comp' AS INT))
         );;
    }
    dimension: c_Income_doc_Self_Employment_Docs {
        label: "Self Employment Docs"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Income_doc_Self_Employment_Docs'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Income_doc_Self_Employment_Docs' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Income_doc_Self_Employment_Docs' AS INT))
         );;
    }
    dimension: c_Income_doc_Pension_Letter {
        label: "Pension Letter/Stub"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Income_doc_Pension_Letter'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Income_doc_Pension_Letter' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Income_doc_Pension_Letter' AS INT))
         );;
    }
    dimension: c_Income_doc_Unemployment_Forms {
        label: "Unemployment Forms"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Income_doc_Unemployment_Forms'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Income_doc_Unemployment_Forms' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Income_doc_Unemployment_Forms' AS INT))
         );;
    }
    dimension: c_Income_doc_Self_Declaration {
        label: "Self Declaration"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Income_doc_Self_Declaration'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Income_doc_Self_Declaration' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Income_doc_Self_Declaration' AS INT))
         );;
    }
    dimension: c_Income_doc_Employer_Printout {
        label: "Employer Printout/Letter"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Income_doc_Employer_Printout'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Income_doc_Employer_Printout' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Income_doc_Employer_Printout' AS INT))
         );;
    }
    dimension: c_Income_doc_VA_Documentation {
        label: "VA Documentation"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Income_doc_VA_Documentation'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Income_doc_VA_Documentation' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Income_doc_VA_Documentation' AS INT))
         );;
    }
    dimension: c_Income_doc_Other {
        label: "Other Documentation"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Income_doc_Other'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Income_doc_Other' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Income_doc_Other' AS INT))
         );;
    }
    dimension: c_Income_doc_Other_Documentation_Specify {
        label: "Other Documentation (Specify)"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Income_doc_Other_Documentation_Specify'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Income_doc_Other_Documentation_Specify' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Income_doc_Other_Documentation_Specify' AS INT))
         );;
    }
    dimension: c_Income_doc_DQ_Check {
        label: "Income Documentation Data Quality Check"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Income_doc_DQ_Check'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Income_doc_DQ_Check' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Income_doc_DQ_Check' AS INT))
         );;
    }
    ######## End: Assessment Questions ############

}