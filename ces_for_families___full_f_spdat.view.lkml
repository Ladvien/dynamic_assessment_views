include: "interface_custom_assessments.view.lkml"
view: ces_for_families___full_f_spdat {

	extends: [interface_custom_assessments]

	sql_table_name: client_assessment_data;;

	dimension: id {
        view_label: "CES for Families - Full F-SPDAT"
        label: "Id -- CES for Families - Full F-SPDAT"
        primary_key: yes
        sql: ${TABLE}.id;;
    }
	######## Begin: Assessment Questions ############

	dimension: c_FSPAT_Parental_Engagement {
        label: "Score, Parental Engagement"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_FSPAT_Parental_Engagement'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_FSPAT_Parental_Engagement' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_FSPAT_Parental_Engagement' AS INT))
         );;
    }
	dimension: c_FSPDAT_Child_Protective_Family_Court {
        label: "Score, Interaction with Child Protective Services and/or Family Court"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_FSPDAT_Child_Protective_Family_Court'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_FSPDAT_Child_Protective_Family_Court' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_FSPDAT_Child_Protective_Family_Court' AS INT))
         );;
    }
	dimension: c_FSPDAT_History_Homelessness_Housing {
        label: "Score, History of Homelessness &amp; Housing"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_FSPDAT_History_Homelessness_Housing'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_FSPDAT_History_Homelessness_Housing' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_FSPDAT_History_Homelessness_Housing' AS INT))
         );;
    }
	dimension: c_FSPDAT_Managing_Tenancy {
        label: "Score, Managing Tenancy"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_FSPDAT_Managing_Tenancy'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_FSPDAT_Managing_Tenancy' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_FSPDAT_Managing_Tenancy' AS INT))
         );;
    }
	dimension: c_FSPDAT_Needs_Children {
        label: "Score, Needs of Children"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_FSPDAT_Needs_Children'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_FSPDAT_Needs_Children' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_FSPDAT_Needs_Children' AS INT))
         );;
    }
	dimension: c_FSPDAT_Score_Abuse_Trauma {
        label: "Score, Experience of Abuse &amp; Trauma"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_FSPDAT_Score_Abuse_Trauma'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_FSPDAT_Score_Abuse_Trauma' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_FSPDAT_Score_Abuse_Trauma' AS INT))
         );;
    }
	dimension: c_FSPDAT_Score_Admin_MoneyMgt {
        label: "Score, Personal Administration &amp; Money Management"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_FSPDAT_Score_Admin_MoneyMgt'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_FSPDAT_Score_Admin_MoneyMgt' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_FSPDAT_Score_Admin_MoneyMgt' AS INT))
         );;
    }
	dimension: c_FSPDAT_Score_Interaction_With_EmergencyServices {
        label: "Score, Interaction with Emergency Services"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_FSPDAT_Score_Interaction_With_EmergencyServices'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_FSPDAT_Score_Interaction_With_EmergencyServices' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_FSPDAT_Score_Interaction_With_EmergencyServices' AS INT))
         );;
    }
	dimension: c_FSPDAT_Score_Involvement_InHigher_Risk {
        label: "Score, Involvement in Higher Rish and/or Exploitive Situations"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_FSPDAT_Score_Involvement_InHigher_Risk'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_FSPDAT_Score_Involvement_InHigher_Risk' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_FSPDAT_Score_Involvement_InHigher_Risk' AS INT))
         );;
    }
	dimension: c_FSPDAT_Score_Legal {
        label: "Score, Legal"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_FSPDAT_Score_Legal'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_FSPDAT_Score_Legal' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_FSPDAT_Score_Legal' AS INT))
         );;
    }
	dimension: c_FSPDAT_Score_Meaningful_Activity {
        label: "Score, Meaningful Daily Activity"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_FSPDAT_Score_Meaningful_Activity'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_FSPDAT_Score_Meaningful_Activity' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_FSPDAT_Score_Meaningful_Activity' AS INT))
         );;
    }
	dimension: c_FSPDAT_Score_Medication {
        label: "Score, Medication"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_FSPDAT_Score_Medication'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_FSPDAT_Score_Medication' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_FSPDAT_Score_Medication' AS INT))
         );;
    }
	dimension: c_FSPDAT_Score_Mental_Wellness {
        label: "Score Mental Health &amp; Wellness &amp; Cognitive Functioning"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_FSPDAT_Score_Mental_Wellness'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_FSPDAT_Score_Mental_Wellness' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_FSPDAT_Score_Mental_Wellness' AS INT))
         );;
    }
	dimension: c_FSPDAT_Score_Physical_Health {
        label: "Score, Physical Health &amp; Wellness"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_FSPDAT_Score_Physical_Health'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_FSPDAT_Score_Physical_Health' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_FSPDAT_Score_Physical_Health' AS INT))
         );;
    }
	dimension: c_FSPDAT_Score_Relationships_Networks {
        label: "Score, Social Relationships &amp; networks"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_FSPDAT_Score_Relationships_Networks'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_FSPDAT_Score_Relationships_Networks' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_FSPDAT_Score_Relationships_Networks' AS INT))
         );;
    }
	dimension: c_FSPDAT_Score_Risk_Of_Harm_ToSelf {
        label: "Score, Risk of Harm to Self or Others"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_FSPDAT_Score_Risk_Of_Harm_ToSelf'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_FSPDAT_Score_Risk_Of_Harm_ToSelf' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_FSPDAT_Score_Risk_Of_Harm_ToSelf' AS INT))
         );;
    }
	dimension: c_FSPDAT_Score_SelfCare_Daily_Living {
        label: "Score, Self Care &amp; Daily Living Skills"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_FSPDAT_Score_SelfCare_Daily_Living'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_FSPDAT_Score_SelfCare_Daily_Living' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_FSPDAT_Score_SelfCare_Daily_Living' AS INT))
         );;
    }
	dimension: c_FSPDAT_Score_Substance_Use {
        label: "Score, Substance Use"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_FSPDAT_Score_Substance_Use'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_FSPDAT_Score_Substance_Use' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_FSPDAT_Score_Substance_Use' AS INT))
         );;
    }
	dimension: c_FSPDAT_Stability_Resiliency {
        label: "Score, Stability/Resiliency of the Family Unit"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_FSPDAT_Stability_Resiliency'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_FSPDAT_Stability_Resiliency' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_FSPDAT_Stability_Resiliency' AS INT))
         );;
    }
	dimension: c_FSPDT_Size_Family_Unit {
        label: "Score, Size of Family Unit"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_FSPDT_Size_Family_Unit'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_FSPDT_Size_Family_Unit' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_FSPDT_Size_Family_Unit' AS INT))
         );;
    }
	dimension: c_FullSPDAT_Password {
        label: "Enter Password"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_FullSPDAT_Password'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_FullSPDAT_Password' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_FullSPDAT_Password' AS INT))
         );;
    }
	######## End: Assessment Questions ############

}