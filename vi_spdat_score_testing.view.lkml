include: "interface_custom_assessments.view.lkml"
view: vi_spdat_score_testing {

    extends: [interface_custom_assessments]

    sql_table_name: client_assessment_data;;

    dimension: id {
        primary_key: yes
        sql: ${TABLE}.id;;
    }
    ######## Begin: Assessment Questions ############

    ######## End: Assessment Questions ############

}