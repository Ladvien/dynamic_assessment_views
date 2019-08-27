include: "interface_custom_assessments.view.lkml"
view: sn_youth_assessment {

    extends: [interface_custom_assessments]
    sql_table_name: client_assessment_data;;

		dimension: id {
            primary_key: yes
            sql: ${TABLE}.id;;
        }
            ######## Begin: Assessment Questions ############

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

        dimension: c_currently_parenting {
            label: "Are you currently parenting?"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_currently_parenting'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_currently_parenting' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_currently_parenting' AS INT))
             )
          ;;
        }

        dimension: c_ivdu {
            label: "Intravenous Drug Use"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_ivdu'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_ivdu' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_ivdu' AS INT))
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

        dimension: c_sn_y_spdat_anything_else {
            label: "Is there anything else you feel we should know?"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_sn_y_spdat_anything_else'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_sn_y_spdat_anything_else' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_sn_y_spdat_anything_else' AS INT))
             )
          ;;
        }

        dimension: c_sn_y_spdat_foster_current {
            label: "Are you currently in the foster care system?"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_sn_y_spdat_foster_current'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_sn_y_spdat_foster_current' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_sn_y_spdat_foster_current' AS INT))
             )
          ;;
        }

        dimension: c_sn_y_spdat_runnings {
            label: "Are you currently running from someone?"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_sn_y_spdat_runnings'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_sn_y_spdat_runnings' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_sn_y_spdat_runnings' AS INT))
             )
          ;;
        }

        dimension: c_substance_use {
            label: "Have you used any substances within the past 24 hours?"
            group_label: "Questions"
            sql: (SELECT pl.value_name
                FROM picklist AS pl
                WHERE pl.field_name = 'c_substance_use'
                    AND pl.code <> ''
                    AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_substance_use' AS INT) IS NULL, FALSE, 
                           pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_substance_use' AS INT))
             )
          ;;
        }

            ######## End: Assessment Questions ############

}