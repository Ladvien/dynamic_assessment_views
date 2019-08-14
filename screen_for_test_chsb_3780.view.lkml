include: "interface_custom_assessments.view.lkml"
view: screen_for_test_chsb_3780 {

    extends: [interface_custom_assessments]

    sql_table_name: client_assessment_data;;

    dimension: id {
        primary_key: yes
        sql: ${TABLE}.id;;
    }
    ######## Begin: Assessment Questions ############

    ######## End: Assessment Questions ############

}