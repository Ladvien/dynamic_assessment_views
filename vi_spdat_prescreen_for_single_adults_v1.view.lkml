include: "interface_custom_assessments.view.lkml"
view: vi_spdat_prescreen_for_single_adults_v1 {

    extends: [interface_custom_assessments]

    sql_table_name: client_assessment_data;;

    dimension: id {
        primary_key: yes
        sql: ${TABLE}.id;;
    }
    ######## Begin: Assessment Questions ############

    dimension:  {
        label: ""
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = ''
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, '' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, '' AS INT))
         );;
    }
    ######## End: Assessment Questions ############

}