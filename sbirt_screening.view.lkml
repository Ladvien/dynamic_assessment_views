include: "interface_custom_assessments.view.lkml"
view: sbirt_screening {

    extends: [interface_custom_assessments]

    sql_table_name: client_assessment_data;;

    dimension: id {
        label: "Id -- SBIRT Screening"
        primary_key: yes
        sql: ${TABLE}.id;;
    }
    ######## Begin: Assessment Questions ############

    dimension: c_Alcohol_Use {
        label: "Alcohol"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Alcohol_Use'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Alcohol_Use' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Alcohol_Use' AS INT))
         );;
    }
    dimension: c_Alcohol_Use_Past_Month {
        label: "Number of Days of Alcohol use in past month"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Alcohol_Use_Past_Month'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Alcohol_Use_Past_Month' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Alcohol_Use_Past_Month' AS INT))
         );;
    }
    dimension: c_Alcohol_Use_Past_Week {
        label: "Number of Days of Alcohol use in past week"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Alcohol_Use_Past_Week'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Alcohol_Use_Past_Week' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Alcohol_Use_Past_Week' AS INT))
         );;
    }
    dimension: c_Club_Drugs_Use {
        label: "Club Drugs (MDMA/Ecstasy)"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Club_Drugs_Use'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Club_Drugs_Use' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Club_Drugs_Use' AS INT))
         );;
    }
    dimension: c_Club_Drug_Use_Past_Month {
        label: "Number of Days of Club Drug use in past month"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Club_Drug_Use_Past_Month'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Club_Drug_Use_Past_Month' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Club_Drug_Use_Past_Month' AS INT))
         );;
    }
    dimension: c_Cocaine_Use {
        label: "Cocaine"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Cocaine_Use'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Cocaine_Use' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Cocaine_Use' AS INT))
         );;
    }
    dimension: c_Decrease_substance_misuse {
        label: "Decrease in overall substance misuse"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Decrease_substance_misuse'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Decrease_substance_misuse' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Decrease_substance_misuse' AS INT))
         );;
    }
    dimension: c_Decrease_substance_misuse_note {
        label: "Decrease substance misuse note"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Decrease_substance_misuse_note'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Decrease_substance_misuse_note' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Decrease_substance_misuse_note' AS INT))
         );;
    }
    dimension: c_Herbs_or_Synthetic_Drugs_Use {
        label: "Herbs or synthetic drugs (i.e. salvia, K2, or bath salts)"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Herbs_or_Synthetic_Drugs_Use'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Herbs_or_Synthetic_Drugs_Use' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Herbs_or_Synthetic_Drugs_Use' AS INT))
         );;
    }
    dimension: c_Heroin_Use {
        label: "Heroin"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Heroin_Use'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Heroin_Use' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Heroin_Use' AS INT))
         );;
    }
    dimension: c_Inhalants_Use {
        label: "Inhalants (i.e. nitrous oxide) "
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Inhalants_Use'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Inhalants_Use' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Inhalants_Use' AS INT))
         );;
    }
    dimension: c_Less_Harmful_Drugs {
        label: "Less harmful drug(s)"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Less_Harmful_Drugs'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Less_Harmful_Drugs' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Less_Harmful_Drugs' AS INT))
         );;
    }
    dimension: c_Less_Harmful_Drugs_Note {
        label: "Less harmful drug(s) note"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Less_Harmful_Drugs_Note'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Less_Harmful_Drugs_Note' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Less_Harmful_Drugs_Note' AS INT))
         );;
    }
    dimension: c_Less_Harmful_Method {
        label: "Less harmful method"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Less_Harmful_Method'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Less_Harmful_Method' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Less_Harmful_Method' AS INT))
         );;
    }
    dimension: c_Linkage_To_Treatment {
        label: "Linkage to treatment (attending meetings, seeking treatment, etc.)"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Linkage_To_Treatment'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Linkage_To_Treatment' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Linkage_To_Treatment' AS INT))
         );;
    }
    dimension: c_Marijuana_Use {
        label: "Marijuana "
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Marijuana_Use'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Marijuana_Use' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Marijuana_Use' AS INT))
         );;
    }
    dimension: c_Marijuana_Use_Past_Month {
        label: "Number of Days of Marijuana use in past month"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Marijuana_Use_Past_Month'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Marijuana_Use_Past_Month' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Marijuana_Use_Past_Month' AS INT))
         );;
    }
    dimension: c_Marijuana_Use_Past_Week {
        label: "Number of Days of Marijuana use in past week"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Marijuana_Use_Past_Week'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Marijuana_Use_Past_Week' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Marijuana_Use_Past_Week' AS INT))
         );;
    }
    dimension: c_Methamphetamine_Use {
        label: "Methamphetamine"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Methamphetamine_Use'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Methamphetamine_Use' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Methamphetamine_Use' AS INT))
         );;
    }
    dimension: c_Methamphetamine_Use_Past_Week {
        label: "Number of Days of Methamphetamine use in past week"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Methamphetamine_Use_Past_Week'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Methamphetamine_Use_Past_Week' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Methamphetamine_Use_Past_Week' AS INT))
         );;
    }
    dimension: c_Prescription_Opiate_Use {
        label: "Prescription Opiates (pain medications-oxycodone, Vicodin)"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Prescription_Opiate_Use'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Prescription_Opiate_Use' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Prescription_Opiate_Use' AS INT))
         );;
    }
    dimension: c_Prescription_Stimulants_Use {
        label: "Prescription Stimulants (Adderall, Ritalin, Concerta)"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Prescription_Stimulants_Use'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Prescription_Stimulants_Use' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Prescription_Stimulants_Use' AS INT))
         );;
    }
    dimension: c_Progress_On_Stages_Of_Behavior {
        label: "Progress on stages of behavior change"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Progress_On_Stages_Of_Behavior'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Progress_On_Stages_Of_Behavior' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Progress_On_Stages_Of_Behavior' AS INT))
         );;
    }
    dimension: c_SBIRT_Outcomes_Note {
        label: "SBIRT Outcomes Note"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_SBIRT_Outcomes_Note'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_SBIRT_Outcomes_Note' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_SBIRT_Outcomes_Note' AS INT))
         );;
    }
    dimension: c_Sedatives_Use {
        label: "Sedatives, Hypnotics, or Anxiolytics (benzodiazepines, sleeping pills)"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Sedatives_Use'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Sedatives_Use' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Sedatives_Use' AS INT))
         );;
    }
    dimension: c_Sedatives_Use_Past_Month {
        label: "Number of days of Sedatives, Hypnotics, or Anxiolytics (benzodiazepines, sleeping pills) use in past month"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Sedatives_Use_Past_Month'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Sedatives_Use_Past_Month' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Sedatives_Use_Past_Month' AS INT))
         );;
    }
    dimension: c_Steroids_Use {
        label: "Steroids"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Steroids_Use'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Steroids_Use' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Steroids_Use' AS INT))
         );;
    }
    dimension: c_Tobacco_Nicotine_Use {
        label: "Tobacco/Nicotine Products"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Tobacco_Nicotine_Use'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Tobacco_Nicotine_Use' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Tobacco_Nicotine_Use' AS INT))
         );;
    }
    dimension: c_Tobacco_Nicotine_Use_Past_Month {
        label: "Number of Days of Tobacco/Nicotine use in past month"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Tobacco_Nicotine_Use_Past_Month'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Tobacco_Nicotine_Use_Past_Month' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Tobacco_Nicotine_Use_Past_Month' AS INT))
         );;
    }
    dimension: c_Tobacco_Nicotine_Use_Past_Week {
        label: "Number of Days of Tobacco/Nicotine use in past week"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Tobacco_Nicotine_Use_Past_Week'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Tobacco_Nicotine_Use_Past_Week' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Tobacco_Nicotine_Use_Past_Week' AS INT))
         );;
    }
    ######## End: Assessment Questions ############

}