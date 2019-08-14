include: "interface_custom_assessments.view.lkml"
view: vi_y_spdat_prescreen_for_transition_age_youth_marin {

    extends: [interface_custom_assessments]

    sql_table_name: client_assessment_data;;

    dimension: id {
        primary_key: yes
        sql: ${TABLE}.id;;
    }
    ######## Begin: Assessment Questions ############

    dimension: c_years_homeless_since_leaving_parents {
        label: "Since you moved away from your parents or foster parents, how many years in your entire life have you lived on the streets or in emergency shelter?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_years_homeless_since_leaving_parents'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_years_homeless_since_leaving_parents' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_years_homeless_since_leaving_parents' AS INT))
         );;
    }
    ######## End: Assessment Questions ############

}