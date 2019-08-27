include: "interface_custom_assessments.view.lkml"
view: community_queue_score {

    extends: [interface_custom_assessments]
    sql_table_name: client_assessment_data;;

		dimension: id {
            primary_key: yes
            sql: ${TABLE}.id;;
        }
            ######## Begin: Assessment Questions ############

		dimension: c_recalculated_score {
            label: "Recalculated Score"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_recalculated_score'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_recalculated_score' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_recalculated_score' AS INT))
             )
          ;;
        }

            ######## End: Assessment Questions ############

}