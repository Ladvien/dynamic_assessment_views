include: "interface_custom_assessments.view.lkml"
view: screen_for_test_chsb_3780 {

    extends: [interface_custom_assessments]
    sql_table_name: client_assessment_data;;

		dimension: id {
            primary_key: yes
            sql: ${TABLE}.id;;
        }
            ######## Begin: Assessment Questions ############

		dimension: asian_number {
            label: "Asian in Household"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'asian_number'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'asian_number' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'asian_number' AS INT))
             )
          ;;
        }

        dimension: assess_type {
            label: "Assessment Type"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'assess_type'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'assess_type' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'assess_type' AS INT))
             )
          ;;
        }

        dimension: c_c_pr_vi_spdat_q17c {
            label: "Percent of that owed"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_c_pr_vi_spdat_q17c'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_c_pr_vi_spdat_q17c' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_c_pr_vi_spdat_q17c' AS INT))
             )
          ;;
        }

        dimension: c_c_pr_vi_spdat_q18a {
            label: "percent on hand of that owed"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_c_pr_vi_spdat_q18a'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_c_pr_vi_spdat_q18a' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_c_pr_vi_spdat_q18a' AS INT))
             )
          ;;
        }

        dimension: c_date_for_test {
            label: "Date for test 3780"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_date_for_test'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_date_for_test' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_date_for_test' AS INT))
             )
          ;;
        }

        dimension: c_pr_vi_spdat_q16a {
            label: "What is the total amount of money that others think is owed?"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_pr_vi_spdat_q16a'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_pr_vi_spdat_q16a' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_pr_vi_spdat_q16a' AS INT))
             )
          ;;
        }

        dimension: c_pr_vi_spdat_q17 {
            label: "Do you get any money or assistance from the government like SSI, SSDI, TANF or Food Stamps, or do you have a pension, inheritance, get money from a regular job or working under the table, or anything like that?"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_pr_vi_spdat_q17'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_pr_vi_spdat_q17' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_pr_vi_spdat_q17' AS INT))
             )
          ;;
        }

        dimension: c_pr_vi_spdat_q17a {
            label: "What is the next date you know you will receive money?"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_pr_vi_spdat_q17a'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_pr_vi_spdat_q17a' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_pr_vi_spdat_q17a' AS INT))
             )
          ;;
        }

        dimension: c_pr_vi_spdat_q17b {
            label: "What is the total amount you will expect to receive?"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_pr_vi_spdat_q17b'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_pr_vi_spdat_q17b' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_pr_vi_spdat_q17b' AS INT))
             )
          ;;
        }

        dimension: c_pr_vi_spdat_q18 {
            label: "What is the total amount of money you currently have, including any money in the bank or investments?"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_pr_vi_spdat_q18'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_pr_vi_spdat_q18' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_pr_vi_spdat_q18' AS INT))
             )
          ;;
        }

        dimension: c_pr_vi_spdat_q19 {
            label: "Is there anyone currently helping you manage your finances, like a payee, guardianship, or trustee, because a judge or the government said you have to?"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_pr_vi_spdat_q19'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_pr_vi_spdat_q19' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_pr_vi_spdat_q19' AS INT))
             )
          ;;
        }

        dimension: c_pr_vi_spdat_q20 {
            label: "In the last year, how many times have you received a cash advance or loan from a business, bank, or person, where you have not repaid the full amount and the interest owed is 15% or more?"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_pr_vi_spdat_q20'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_pr_vi_spdat_q20' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_pr_vi_spdat_q20' AS INT))
             )
          ;;
        }

        dimension: c_pr_vi_spdat_q21 {
            label: "PR-VI-SPDAT-Q21"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_pr_vi_spdat_q21'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_pr_vi_spdat_q21' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_pr_vi_spdat_q21' AS INT))
             )
          ;;
        }

            ######## End: Assessment Questions ############

}