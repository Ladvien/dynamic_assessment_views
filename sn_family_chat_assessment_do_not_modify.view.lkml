include: "interface_custom_assessments.view.lkml"
view: sn_family_chat_assessment_do_not_modify {

    extends: [interface_custom_assessments]

    sql_table_name: client_assessment_data;;

		dimension: id {
            primary_key: yes
            sql: ${TABLE}.id;;
        }
            ######## Begin: Assessment Questions ############

		dimension: c_amerigroup {
            label: "Amerigroup"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_amerigroup'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_amerigroup' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_amerigroup' AS INT))
             )
          ;;
        }

        dimension: c_Are_children_under_age_4_in_family {
            label: "Are there any children under the age of 4 in your family?"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_Are_children_under_age_4_in_family'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Are_children_under_age_4_in_family' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Are_children_under_age_4_in_family' AS INT))
             )
          ;;
        }

        dimension: c_chat_q2 {
            label: "I am going to read types of places people sleep. Please tell me which one that your family sleep at most often. (Check only one.)"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_chat_q2'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_chat_q2' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_chat_q2' AS INT))
             )
          ;;
        }

        dimension: c_chat_q22 {
            label: "Do you or anyone in your family require accommodation for hearing and/or vision (other than glasses)?"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_chat_q22'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_chat_q22' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_chat_q22' AS INT))
             )
          ;;
        }

        dimension: c_chat_q29a {
            label: "Are you insulin dependent?"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_chat_q29a'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_chat_q29a' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_chat_q29a' AS INT))
             )
          ;;
        }

        dimension: c_chat_q30 {
            label: " In the past 3 years, how many times have you or anyone in your family been admitted to the hospital for being a threat to yourself or anyone else (in other words, how many times have you been “legal 2000’d”)? "
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_chat_q30'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_chat_q30' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_chat_q30' AS INT))
             )
          ;;
        }

        dimension: c_chat_q31 {
            label: "Do you or anyone in your family have a current mental health diagnosis?"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_chat_q31'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_chat_q31' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_chat_q31' AS INT))
             )
          ;;
        }

        dimension: c_chat_q32 {
            label: "Do you or anyone in your family have (mental health) medication prescribed to you that you haven’t taken, have sold, have been stolen from you, have been misplaced, or were never filled?"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_chat_q32'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_chat_q32' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_chat_q32' AS INT))
             )
          ;;
        }

        dimension: c_chat_q33 {
            label: "Has your or anyone in your family's gambling contributed to your homelessness?"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_chat_q33'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_chat_q33' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_chat_q33' AS INT))
             )
          ;;
        }

        dimension: c_chat_q38 {
            label: "Do you or anyone in your family currently use synthetic drugs (such as bath salts; synthetic opiates; spice; etc.)?"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_chat_q38'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_chat_q38' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_chat_q38' AS INT))
             )
          ;;
        }

        dimension: c_chat_q42 {
            label: "Are you or anyone in your family required to register with law enforcement for any reason?"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_chat_q42'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_chat_q42' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_chat_q42' AS INT))
             )
          ;;
        }

        dimension: c_chat_q49 {
            label: "Is there someone in you or anyone in your family's life that makes you afraid for your safety or well-being?"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_chat_q49'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_chat_q49' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_chat_q49' AS INT))
             )
          ;;
        }

        dimension: c_chat_q50 {
            label: "If yes, did it contribute to your current period of homelessness?"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_chat_q50'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_chat_q50' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_chat_q50' AS INT))
             )
          ;;
        }

        dimension: c_chat_q52 {
            label: "When we have a housing opportunity for you, how can we contact you?"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_chat_q52'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_chat_q52' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_chat_q52' AS INT))
             )
          ;;
        }

        dimension: c_Clark_County_6_Months {
            label: "Has your family been Clark County residents for at least the last 6 months?"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_Clark_County_6_Months'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Clark_County_6_Months' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Clark_County_6_Months' AS INT))
             )
          ;;
        }

        dimension: c_emergency_contact {
            label: "Who is your emergency contact person(s) and how can we reach them (email/phone)?"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_emergency_contact'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_emergency_contact' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_emergency_contact' AS INT))
             )
          ;;
        }

        dimension: c_fchat_03 {
            label: "How many children under the age of 18 are not currently with your family, but you have reason to believe they will be joining you when you get housed?"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_fchat_03'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_fchat_03' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_fchat_03' AS INT))
             )
          ;;
        }

        dimension: c_fchat_04 {
            label: "Do you currently have legal custody of the children in your family?"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_fchat_04'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_fchat_04' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_fchat_04' AS INT))
             )
          ;;
        }

        dimension: c_fchat_05 {
            label: "Do you or anyone in your family currently have any restrictions on where you can legally reside?"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_fchat_05'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_fchat_05' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_fchat_05' AS INT))
             )
          ;;
        }

        dimension: c_hpn {
            label: "HPN"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_hpn'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_hpn' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_hpn' AS INT))
             )
          ;;
        }

        dimension: c_jail_number {
            label: "Number of times in jail or prison"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_jail_number'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_jail_number' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_jail_number' AS INT))
             )
          ;;
        }

        dimension: c_jurisdiction {
            label: "c_jurisdiction"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_jurisdiction'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_jurisdiction' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_jurisdiction' AS INT))
             )
          ;;
        }

        dimension: c_pets {
            label: "Do you have pets with you?"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_pets'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_pets' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_pets' AS INT))
             )
          ;;
        }

        dimension: c_vi_spdat_q1 {
            label: "What is the total length of time your family have lived on the streets or in shelters?"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_vi_spdat_q1'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_vi_spdat_q1' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_vi_spdat_q1' AS INT))
             )
          ;;
        }

        dimension: c_vi_spdat_q2 {
            label: "In the past three years, how many times has your family been housed and then homeless again?"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_vi_spdat_q2'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_vi_spdat_q2' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_vi_spdat_q2' AS INT))
             )
          ;;
        }

        dimension: household_adults {
            label: "Adults in Household"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'household_adults'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'household_adults' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'household_adults' AS INT))
             )
          ;;
        }

        dimension: household_children {
            label: "Children in Household"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'household_children'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'household_children' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'household_children' AS INT))
             )
          ;;
        }

        dimension: household_total {
            label: "Total Household Members"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'household_total'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'household_total' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'household_total' AS INT))
             )
          ;;
        }

            ######## End: Assessment Questions ############

}