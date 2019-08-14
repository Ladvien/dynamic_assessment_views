include: "interface_custom_assessments.view.lkml"
view: help_center_follow_up {

    extends: [interface_custom_assessments]

    sql_table_name: client_assessment_data;;

    dimension: id {
        primary_key: yes
        sql: ${TABLE}.id;;
    }
    ######## Begin: Assessment Questions ############

    dimension: c_scc_years_homeless {
        label: "How many total years have you been homeless"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_scc_years_homeless'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_scc_years_homeless' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_scc_years_homeless' AS INT))
         );;
    }
    dimension: c_ywh_sleep_frequently {
        label: "Where do you sleep most frequently?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_ywh_sleep_frequently'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_ywh_sleep_frequently' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_ywh_sleep_frequently' AS INT))
         );;
    }
    ######## End: Assessment Questions ############

}