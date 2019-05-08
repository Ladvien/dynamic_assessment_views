include: "interface_custom_assessments.view.lkml"
view: ces_for_families___scap_hud_assessment {

	extends: [interface_custom_assessments]

	sql_table_name: client_assessment_data;;

	dimension: id {
        view_label: "CES For Families - SCAP HUD Assessment"
        label: "Id -- CES For Families - SCAP HUD Assessment"
        primary_key: yes
        sql: ${TABLE}.id;;
    }

	######## Begin: Assessment Questions ############

	dimension: c_Referred_Method {
        label: "Referred Method"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Referred_Method'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Referred_Method' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Referred_Method' AS INT))
         );;
    }
	dimension: c_First_Prevention_Homelessness {
        label: "First time at-risk of homelessness"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_First_Prevention_Homelessness'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_First_Prevention_Homelessness' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_First_Prevention_Homelessness' AS INT))
         );;
    }
	dimension: c_Homelessness_Child {
        label: "Experience homelessness as a child"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Homelessness_Child'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Homelessness_Child' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Homelessness_Child' AS INT))
         );;
    }
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
	dimension: c_Referred_Method_Other {
        label: "Other referral method"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Referred_Method_Other'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Referred_Method_Other' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Referred_Method_Other' AS INT))
         );;
    }
	dimension: c_Completed_SA {
        label: "When was the full Standardized Assessment completed?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Completed_SA'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Completed_SA' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Completed_SA' AS INT))
         );;
    }
	dimension: c_HousingAssistance_OtherResources {
        label: "Other Resources"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_HousingAssistance_OtherResources'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_HousingAssistance_OtherResources' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_HousingAssistance_OtherResources' AS INT))
         );;
    }
	dimension: c_HousingAssistance_EvictionPrevent {
        label: "Eviction Prevention"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_HousingAssistance_EvictionPrevent'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_HousingAssistance_EvictionPrevent' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_HousingAssistance_EvictionPrevent' AS INT))
         );;
    }
	dimension: c_HousingAssistance_FamilyHousingAs {
        label: "Family Housing Assistance Payment"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_HousingAssistance_FamilyHousingAs'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_HousingAssistance_FamilyHousingAs' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_HousingAssistance_FamilyHousingAs' AS INT))
         );;
    }
	dimension: c_HousingAssistance_HPRP {
        label: "HPRP"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_HousingAssistance_HPRP'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_HousingAssistance_HPRP' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_HousingAssistance_HPRP' AS INT))
         );;
    }
	dimension: c_HousingAssistance_Low_IncomeAffo {
        label: "Low-Income/Affordable Housing"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_HousingAssistance_Low_IncomeAffo'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_HousingAssistance_Low_IncomeAffo' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_HousingAssistance_Low_IncomeAffo' AS INT))
         );;
    }
	dimension: c_HousingAssistance_None {
        label: "None"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_HousingAssistance_None'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_HousingAssistance_None' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_HousingAssistance_None' AS INT))
         );;
    }
	dimension: c_HousingAssistance_Section8Voucher {
        label: "Section 8 Voucher/Housing Subsidy"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_HousingAssistance_Section8Voucher'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_HousingAssistance_Section8Voucher' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_HousingAssistance_Section8Voucher' AS INT))
         );;
    }
	dimension: c_HousingAssistance_FamilyFriends {
        label: "Family/Friends"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_HousingAssistance_FamilyFriends'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_HousingAssistance_FamilyFriends' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_HousingAssistance_FamilyFriends' AS INT))
         );;
    }
	dimension: c_First_Time_Homeless {
        label: "Is this your first time homeless?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_First_Time_Homeless'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_First_Time_Homeless' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_First_Time_Homeless' AS INT))
         );;
    }
	dimension: c_Previously_Homeless {
        label: "Were you ever previously homeless? "
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Previously_Homeless'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Previously_Homeless' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Previously_Homeless' AS INT))
         );;
    }
	dimension: c_Exit_Date {
        label: "Exit date from SCAP"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Exit_Date'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Exit_Date' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Exit_Date' AS INT))
         );;
    }
	dimension: c_Circumstances {
        label: "What circumstances contributed to your current housing situation?  (Choose any that apply)"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Circumstances'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Circumstances' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Circumstances' AS INT))
         );;
    }
	dimension: c_Reason_For_Leaving_CFAM {
        label: "Reason for Leaving CFAM"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Reason_For_Leaving_CFAM'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Reason_For_Leaving_CFAM' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Reason_For_Leaving_CFAM' AS INT))
         );;
    }
	######## End: Assessment Questions ############

}