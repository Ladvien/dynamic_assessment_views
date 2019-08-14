include: "interface_custom_assessments.view.lkml"
view: coordinated_entry_access_event {

    extends: [interface_custom_assessments]

    sql_table_name: client_assessment_data;;

    dimension: id {
        primary_key: yes
        sql: ${TABLE}.id;;
    }
    ######## Begin: Assessment Questions ############

    dimension: c_event_ce {
        label: "Event"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_event_ce'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_event_ce' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_event_ce' AS INT))
         );;
    }
    dimension: c_event_dependentc {
        label: "Location of Crisis Housing or Permanent Housing Referral [Project name/HMIS ID]"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_event_dependentc'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_event_dependentc' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_event_dependentc' AS INT))
         );;
    }
    dimension: c_event_dependentd {
        label: "Referral Result"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_event_dependentd'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_event_dependentd' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_event_dependentd' AS INT))
         );;
    }
    dimension: c_event_dependente {
        label: "Date of result "
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_event_dependente'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_event_dependente' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_event_dependente' AS INT))
         );;
    }
    ######## End: Assessment Questions ############

}