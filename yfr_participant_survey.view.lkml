include: "interface_custom_assessments.view.lkml"
view: yfr_participant_survey {

    extends: [interface_custom_assessments]

    sql_table_name: client_assessment_data;;

    dimension: id {
        label: "Id -- YFR Participant Survey"
        primary_key: yes
        sql: ${TABLE}.id;;
    }
    ######## Begin: Assessment Questions ############

    dimension: c_appetite_issues {
        label: "Poor appetite or overeating"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_appetite_issues'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_appetite_issues' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_appetite_issues' AS INT))
         );;
    }
    dimension: c_Assist_cell_phone {
        label: "Assist with purchasing cell phone and service"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Assist_cell_phone'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Assist_cell_phone' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Assist_cell_phone' AS INT))
         );;
    }
    dimension: c_Assist_community_resources {
        label: "Assist with finding and accessing community resources"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Assist_community_resources'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Assist_community_resources' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Assist_community_resources' AS INT))
         );;
    }
    dimension: c_Assist_living_skills {
        label: "Assist with daily living skills, such as cooking, budgeting, paying bills and housecleaning"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Assist_living_skills'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Assist_living_skills' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Assist_living_skills' AS INT))
         );;
    }
    dimension: c_Assist_with_medical {
        label: "Assist with medical appointments so you don’t have to experience that alone"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Assist_with_medical'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Assist_with_medical' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Assist_with_medical' AS INT))
         );;
    }
    dimension: c_Check_on_you {
        label: "Check in on you regularly – to see how you are doing"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Check_on_you'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Check_on_you' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Check_on_you' AS INT))
         );;
    }
    dimension: c_Easily_annoyed {
        label: "Becoming easily annoyed or irritable"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Easily_annoyed'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Easily_annoyed' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Easily_annoyed' AS INT))
         );;
    }
    dimension: c_Feeling_afraid {
        label: "Feeling afraid as if something awful might happen"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Feeling_afraid'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Feeling_afraid' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Feeling_afraid' AS INT))
         );;
    }
    dimension: c_Feeling_bad_about_yourself {
        label: "Feeling bad about yourself or that you are a failure or have let yourself or your family down"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Feeling_bad_about_yourself'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Feeling_bad_about_yourself' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Feeling_bad_about_yourself' AS INT))
         );;
    }
    dimension: c_Feeling_down {
        label: "Feeling down, depressed, or hopeless"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Feeling_down'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Feeling_down' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Feeling_down' AS INT))
         );;
    }
    dimension: c_Feeling_nervous {
        label: "Feeling nervous, anxious or on edge"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Feeling_nervous'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Feeling_nervous' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Feeling_nervous' AS INT))
         );;
    }
    dimension: c_health_today {
        label: "1. In general, how would you rate your health today?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_health_today'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_health_today' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_health_today' AS INT))
         );;
    }
    dimension: c_Help_finding_apartment {
        label: "Help with finding an apartment or co-signing a lease"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Help_finding_apartment'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Help_finding_apartment' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Help_finding_apartment' AS INT))
         );;
    }
    dimension: c_Help_with_job_search {
        label: "Help with job search assistance or career counseling"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Help_with_job_search'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Help_with_job_search' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Help_with_job_search' AS INT))
         );;
    }
    dimension: c_Help_with_school {
        label: "Help with school (homework, re-enrolling in school, applying to college"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Help_with_school'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Help_with_school' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Help_with_school' AS INT))
         );;
    }
    dimension: c_Laundry_place {
        label: "Provide a place to do laundry"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Laundry_place'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Laundry_place' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Laundry_place' AS INT))
         );;
    }
    dimension: c_Little_interest {
        label: "Little interest or pleasure in doing things"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Little_interest'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Little_interest' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Little_interest' AS INT))
         );;
    }
    dimension: c_Preferred_name {
        label: "Preferred Name"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Preferred_name'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Preferred_name' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Preferred_name' AS INT))
         );;
    }
    dimension: c_Provide_an_emergency_place {
        label: "Provide an emergency place to stay"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Provide_an_emergency_place'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Provide_an_emergency_place' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Provide_an_emergency_place' AS INT))
         );;
    }
    dimension: c_Provide_emergency_cash {
        label: "Provide cash in times of emergency"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Provide_emergency_cash'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Provide_emergency_cash' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Provide_emergency_cash' AS INT))
         );;
    }
    dimension: c_Provide_emotional_support {
        label: "Provide emotional support – a caring adult to talk to"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Provide_emotional_support'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Provide_emotional_support' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Provide_emotional_support' AS INT))
         );;
    }
    dimension: c_Provide_family_meals {
        label: "Provide a home for occasional family meals"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Provide_family_meals'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Provide_family_meals' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Provide_family_meals' AS INT))
         );;
    }
    dimension: c_Provide_home_for_holidays {
        label: "Provide a home to go to for the holidays"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Provide_home_for_holidays'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Provide_home_for_holidays' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Provide_home_for_holidays' AS INT))
         );;
    }
    dimension: c_Provide_transportation {
        label: "Help by providing or assisting with transportation"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Provide_transportation'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Provide_transportation' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Provide_transportation' AS INT))
         );;
    }
    dimension: c_Restless {
        label: "Being so restless that it is hard to sit still"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Restless'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Restless' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Restless' AS INT))
         );;
    }
    dimension: c_Share_culture {
        label: "Share in or support experiences of your cultural or spiritual background"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Share_culture'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Share_culture' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Share_culture' AS INT))
         );;
    }
    dimension: c_Slow_or_fidgety {
        label: "Moving or speaking so slowly that other people could have noticed. Or the opposite being so fidgety or restless that you have been moving around a lot more than usual"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Slow_or_fidgety'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Slow_or_fidgety' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Slow_or_fidgety' AS INT))
         );;
    }
    dimension: c_Survey_timing {
        label: "Survey timing"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Survey_timing'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Survey_timing' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Survey_timing' AS INT))
         );;
    }
    dimension: c_Trouble_concentrating {
        label: "Trouble concentrating on things, such as reading the newspaper or watching television"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Trouble_concentrating'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Trouble_concentrating' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Trouble_concentrating' AS INT))
         );;
    }
    dimension: c_Trouble_relaxing {
        label: "Trouble relaxing"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Trouble_relaxing'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Trouble_relaxing' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Trouble_relaxing' AS INT))
         );;
    }
    dimension: c_Trouble_sleeping {
        label: "Trouble falling or staying asleep, or sleeping too much"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Trouble_sleeping'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Trouble_sleeping' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Trouble_sleeping' AS INT))
         );;
    }
    dimension: c_Worrying {
        label: "Not being able to stop or control worrying"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Worrying'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Worrying' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Worrying' AS INT))
         );;
    }
    dimension: c_Worrying_too_much {
        label: "Worrying too much about different things"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Worrying_too_much'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Worrying_too_much' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Worrying_too_much' AS INT))
         );;
    }
    ######## End: Assessment Questions ############

}