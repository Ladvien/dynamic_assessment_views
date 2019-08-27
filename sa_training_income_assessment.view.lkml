include: "interface_custom_assessments.view.lkml"
view: sa_training_income_assessment {

    extends: [interface_custom_assessments]
    sql_table_name: client_assessment_data;;

		dimension: id {
            primary_key: yes
            sql: ${TABLE}.id;;
        }
            ######## Begin: Assessment Questions ############

		dimension: income_earned_monthly {
            label: "Monthly Earned Income"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'income_earned_monthly'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'income_earned_monthly' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'income_earned_monthly' AS INT))
             )
          ;;
        }

            ######## End: Assessment Questions ############

}