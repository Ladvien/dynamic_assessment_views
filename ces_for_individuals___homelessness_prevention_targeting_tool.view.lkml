include: "interface_custom_assessments.view.lkml"
view: ces_for_individuals___homelessness_prevention_targeting_tool {

	extends: [interface_custom_assessments]

	sql_table_name: client_assessment_data;;

	dimension: id {
        label: "Id -- CES for Individuals - Homelessness Prevention Targeting Tool"
        primary_key: yes
        sql: ${TABLE}.id;;
    }

	######## Begin: Assessment Questions ############

	dimension: c_30_days_vacate_notice {
        label: "Have recieved a 30-day notice to vacate or experiencing a housing crisis that will lead to an expected loss of housing within 1 month."
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_30_days_vacate_notice'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_30_days_vacate_notice' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_30_days_vacate_notice' AS INT))
         );;
    }
	dimension: c_Client_Age_55_Older {
        label: "Adult is 55 years old or older"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Client_Age_55_Older'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Client_Age_55_Older' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Client_Age_55_Older' AS INT))
         );;
    }
	dimension: c_Client_Has_Disability {
        label: "Adult has disability (e.g.chronic physical illness or disability, serious mental illness, PSTD, HIV/AIDS)"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Client_Has_Disability'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Client_Has_Disability' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Client_Has_Disability' AS INT))
         );;
    }
	dimension: c_Currently_Fleeing_Sexual_Assualt_Human_Trafficking {
        label: "Currently Fleeing or attempting to flee domestic violence, dating violence, sexual assult, stalking or human trafficking"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Currently_Fleeing_Sexual_Assualt_Human_Trafficking'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Currently_Fleeing_Sexual_Assualt_Human_Trafficking' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Currently_Fleeing_Sexual_Assualt_Human_Trafficking' AS INT))
         );;
    }
	dimension: c_Discharged_From_Insitution {
        label: "Head of household or other household member was recently discharged (within last 6 months) from an institution (hospital, jail, etc.) after stay of any length"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Discharged_From_Insitution'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Discharged_From_Insitution' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Discharged_From_Insitution' AS INT))
         );;
    }
	dimension: c_Doubled_Up_Household_To_Vacate {
        label: "If DOUBLED UP, household/adult/youth has been told by the lease holder to vacate the unit. FSC/CES program staff has verified with lease holder that prospective participant is no longer welcome and must vacate."
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Doubled_Up_Household_To_Vacate'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Doubled_Up_Household_To_Vacate' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Doubled_Up_Household_To_Vacate' AS INT))
         );;
    }
	dimension: c_Failed_To_Respond_Notice_Within_5_Days {
        label: "2a. Have you failed to respond to the Unlawful Deatiner notice within 5 days of the court hearing or have received a court ruling with a date the person must move out."
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Failed_To_Respond_Notice_Within_5_Days'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Failed_To_Respond_Notice_Within_5_Days' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Failed_To_Respond_Notice_Within_5_Days' AS INT))
         );;
    }
	dimension: c_History_Crisis_Services_Enrollment_Through_LA_County {
        label: "Within the past two years (24 months), household was housed through a homeless housing assistance program in Los Angeles County. (i.e. Homeless Housing Assistance programs include CoC Permanent Housing, Homeless Section 8, Rapid Re-housing etc.)"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_History_Crisis_Services_Enrollment_Through_LA_County'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_History_Crisis_Services_Enrollment_Through_LA_County' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_History_Crisis_Services_Enrollment_Through_LA_County' AS INT))
         );;
    }
	dimension: c_History_Foster_Care_System {
        label: "7. History of involvement in foster care system"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_History_Foster_Care_System'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_History_Foster_Care_System' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_History_Foster_Care_System' AS INT))
         );;
    }
	dimension: c_History_Literal_Homelessness_Youth {
        label: "9. History of literal homeslessness (street/shelter/transtional housing) as adult (select only one)"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_History_Literal_Homelessness_Youth'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_History_Literal_Homelessness_Youth' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_History_Literal_Homelessness_Youth' AS INT))
         );;
    }
	dimension: c_HoH_Experienced_Adversity_Or_Housing_Disruptions {
        label: "Head of household experienced adversity or housing disruptions during childhood. Examples of childhood adversity could include homelessness, placement in foster care, eviction, refugee or immigrant to the U.S., or frequent moves (&gt; 3 in 1 year)."
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_HoH_Experienced_Adversity_Or_Housing_Disruptions'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_HoH_Experienced_Adversity_Or_Housing_Disruptions' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_HoH_Experienced_Adversity_Or_Housing_Disruptions' AS INT))
         );;
    }
	dimension: c_Hotel_Out_Of_Pocket {
        label: "Staying in a hotel in which household is paying out of pocket, but can no longer sustain in the unit due to costs. Prospective PRV participant lacks the resources to secure alternative housing arrangements."
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Hotel_Out_Of_Pocket'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Hotel_Out_Of_Pocket' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Hotel_Out_Of_Pocket' AS INT))
         );;
    }
	dimension: c_Household_Trama_Affects_Housing {
        label: "Recent (within last 6 months) major household trauma or event (e.g., death of family member, separation or divorce from adult partner, birth of new child) that directly affects ability to secure or maintain housing"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Household_Trama_Affects_Housing'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Household_Trama_Affects_Housing' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Household_Trama_Affects_Housing' AS INT))
         );;
    }
	dimension: c_Lease_Holder_Received_Notice {
        label: "If LEASE HOLDER, the household has received a notice of unlawful detainer by the property owner or manager. FSC program staff has verified with property owner/manager that prospective PRV participant has received notice to vacate."
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Lease_Holder_Received_Notice'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Lease_Holder_Received_Notice' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Lease_Holder_Received_Notice' AS INT))
         );;
    }
	dimension: c_Lease_Holder_Received_Notice_Youth_Or_Adult {
        label: "If LEASE HOLDER, the Youth has received a notice of Unlawful Detainer ('Eviction') lawsuit by the property owner or manager. An unlawful detainer is a formal eviction that is filed in justice court"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Lease_Holder_Received_Notice_Youth_Or_Adult'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Lease_Holder_Received_Notice_Youth_Or_Adult' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Lease_Holder_Received_Notice_Youth_Or_Adult' AS INT))
         );;
    }
	dimension: c_Loss_Income_Within_60_Days {
        label: "Sudden and significant loss of income, including employment and/or cash benefits within last 60 days AND/OR uncontrollable and significant increase in non-discretionary expenses within last 60 days"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Loss_Income_Within_60_Days'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Loss_Income_Within_60_Days' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Loss_Income_Within_60_Days' AS INT))
         );;
    }
	dimension: c_Protective_Services_Involvement {
        label: "Current protective services involvement"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Protective_Services_Involvement'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Protective_Services_Involvement' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Protective_Services_Involvement' AS INT))
         );;
    }
	dimension: c_Quit_Notice_With_Less_Than_One_Month_Rent_Owed {
        label: "2d. Have you received 3-day pay or quit notice with less than one month of rent owed."
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Quit_Notice_With_Less_Than_One_Month_Rent_Owed'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Quit_Notice_With_Less_Than_One_Month_Rent_Owed' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Quit_Notice_With_Less_Than_One_Month_Rent_Owed' AS INT))
         );;
    }
	dimension: c_Quit_Notice_With_One_Month_Rent_Owed {
        label: "2c. Have you received 3-day pay or quit notice with more than one month of rent owed."
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Quit_Notice_With_One_Month_Rent_Owed'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Quit_Notice_With_One_Month_Rent_Owed' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Quit_Notice_With_One_Month_Rent_Owed' AS INT))
         );;
    }
	dimension: c_Residence_HCV_PSH_Unit {
        label: "The residence that the family is staying, is a housing choice voucher (HCV) unit or permanent supportive housing (PSH) unit"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Residence_HCV_PSH_Unit'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Residence_HCV_PSH_Unit' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Residence_HCV_PSH_Unit' AS INT))
         );;
    }
	dimension: c_Residence_HCV_PSH_Unit_Youth {
        label: "20. Type of residence the youth is staying in (select only one)"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Residence_HCV_PSH_Unit_Youth'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Residence_HCV_PSH_Unit_Youth' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Residence_HCV_PSH_Unit_Youth' AS INT))
         );;
    }
	dimension: c_Served_Unlawful_Detainer_Or_Have_Court_Date {
        label: "2b. Have been served an unlawful detainer requiring court response or have an already determined court date."
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Served_Unlawful_Detainer_Or_Have_Court_Date'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Served_Unlawful_Detainer_Or_Have_Court_Date' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Served_Unlawful_Detainer_Or_Have_Court_Date' AS INT))
         );;
    }
	dimension: c_Vacate_Within_1_Month {
        label: "Notice to vacate from property manager/lease holder with expected loss of housing within 1 month"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Vacate_Within_1_Month'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Vacate_Within_1_Month' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Vacate_Within_1_Month' AS INT))
         );;
    }
	######## End: Assessment Questions ############

}