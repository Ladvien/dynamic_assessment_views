include: "interface_custom_assessments.view.lkml"
view: vi_y_spdat_prescreen_for_transition_age_youth_marin {

    extends: [interface_custom_assessments]

    sql_table_name: client_assessment_data;;

    dimension: id {
        primary_key: yes
        sql: ${TABLE}.id;;
    }
    ######## Begin: Assessment Questions ############

    ######## End: Assessment Questions ############

}