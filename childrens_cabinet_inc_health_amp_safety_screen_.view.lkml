include: "interface_custom_assessments.view.lkml"
view: childrens_cabinet_inc_health_amp_safety_screen_ {

    extends: [interface_custom_assessments]

    sql_table_name: client_assessment_data;;

    dimension: id {
        primary_key: yes
        sql: ${TABLE}.id;;
    }
    ######## Begin: Assessment Questions ############

    ######## End: Assessment Questions ############

}