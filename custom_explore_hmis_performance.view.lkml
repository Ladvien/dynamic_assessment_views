include: "explore_hmis_performance.view.lkml"

include: "//lookml_remote_test/*.view.lkml"

explore: base {
  
  extends: [explore_hmis_performance]

    join: ces_for_families___screening_tool  {
        view_label: "CES for Families - Screening Tool"
        relationship: many_to_one
        sql_on: ${ces_for_families___screening_tool.id} =  ${client_assessments.id};;
    }

    join: ces_for_youth___next_step_tool  {
        view_label: "CES for Youth - Next Step Tool"
        relationship: many_to_one
        sql_on: ${ces_for_youth___next_step_tool.id} =  ${client_assessments.id};;
    }

    join: ces_for_individuals___ces_survey_part_1  {
        view_label: "CES for Individuals - CES Survey Part 1"
        relationship: many_to_one
        sql_on: ${ces_for_individuals___ces_survey_part_1.id} =  ${client_assessments.id};;
    }

    join: ces_for_families___vi_fspdat_v2  {
        view_label: "CES for Families - VI-FSPDAT v2"
        relationship: many_to_one
        sql_on: ${ces_for_families___vi_fspdat_v2.id} =  ${client_assessments.id};;
    }

    join: ces_for_families___homelessness_prevention_targeting_tool  {
        view_label: "CES for Families - Homelessness Prevention Targeting Tool"
        relationship: many_to_one
        sql_on: ${ces_for_families___homelessness_prevention_targeting_tool.id} =  ${client_assessments.id};;
    }

    join: ces_for_individuals___ces_survey_part_2_assessment_only  {
        view_label: "CES for Individuals - CES Survey Part 2 (Assessment Only)"
        relationship: many_to_one
        sql_on: ${ces_for_individuals___ces_survey_part_2_assessment_only.id} =  ${client_assessments.id};;
    }

    join: ces_for_families___scap_hud_assessment  {
        view_label: "CES For Families - SCAP HUD Assessment"
        relationship: many_to_one
        sql_on: ${ces_for_families___scap_hud_assessment.id} =  ${client_assessments.id};;
    }

    join: copy_of_ces_for_individuals___ces_survey_part_1  {
        view_label: "Copy of CES for Individuals - CES Survey Part 1"
        relationship: many_to_one
        sql_on: ${copy_of_ces_for_individuals___ces_survey_part_1.id} =  ${client_assessments.id};;
    }

    join: ces_for_families___screening_tool_v2  {
        view_label: "CES for Families - Screening Tool v2"
        relationship: many_to_one
        sql_on: ${ces_for_families___screening_tool_v2.id} =  ${client_assessments.id};;
    }

    join: dpss_crisis_housing_order_form  {
        view_label: "DPSS Crisis Housing Order Form"
        relationship: many_to_one
        sql_on: ${dpss_crisis_housing_order_form.id} =  ${client_assessments.id};;
    }

    join: housing_preference  {
        view_label: "Housing Preference"
        relationship: many_to_one
        sql_on: ${housing_preference.id} =  ${client_assessments.id};;
    }

    join: vi_fspdat_v1  {
        view_label: "VI-FSPDAT v1"
        relationship: many_to_one
        sql_on: ${vi_fspdat_v1.id} =  ${client_assessments.id};;
    }

    join: vi_spdat_v1  {
        view_label: "VI-SPDAT v1"
        relationship: many_to_one
        sql_on: ${vi_spdat_v1.id} =  ${client_assessments.id};;
    }

    join: sbirt_screening  {
        view_label: "SBIRT Screening"
        relationship: many_to_one
        sql_on: ${sbirt_screening.id} =  ${client_assessments.id};;
    }

    join: ces_for_families___screening_tool_v3  {
        view_label: "CES for Families - Screening Tool v3"
        relationship: many_to_one
        sql_on: ${ces_for_families___screening_tool_v3.id} =  ${client_assessments.id};;
    }

    join: ces_for_youth___homelessness_prevention_targeting_tool  {
        view_label: "CES for Youth - Homelessness Prevention Targeting Tool"
        relationship: many_to_one
        sql_on: ${ces_for_youth___homelessness_prevention_targeting_tool.id} =  ${client_assessments.id};;
    }

    join: ces_for_individuals___homelessness_prevention_targeting_tool  {
        view_label: "CES for Individuals - Homelessness Prevention Targeting Tool"
        relationship: many_to_one
        sql_on: ${ces_for_individuals___homelessness_prevention_targeting_tool.id} =  ${client_assessments.id};;
    }

    join: ces_for_families___full_f_spdat  {
        view_label: "CES for Families - Full F-SPDAT"
        relationship: many_to_one
        sql_on: ${ces_for_families___full_f_spdat.id} =  ${client_assessments.id};;
    }

    join: ces_for_individuals___full_spdat  {
        view_label: "CES for Individuals - Full SPDAT"
        relationship: many_to_one
        sql_on: ${ces_for_individuals___full_spdat.id} =  ${client_assessments.id};;
    }

    join: lafh___outreach_triage_tool  {
        view_label: "LAFH - Outreach Triage Tool"
        relationship: many_to_one
        sql_on: ${lafh___outreach_triage_tool.id} =  ${client_assessments.id};;
    }

    join: ces_for_youth___full_spdat  {
        view_label: "CES for Youth - Full SPDAT"
        relationship: many_to_one
        sql_on: ${ces_for_youth___full_spdat.id} =  ${client_assessments.id};;
    }

    join: under_construction___do_not_use_justice_discharge___spdat_youth  {
        view_label: "[UNDER CONSTRUCTION - DO NOT USE] Justice Discharge - SPDAT (Youth)"
        relationship: many_to_one
        sql_on: ${under_construction___do_not_use_justice_discharge___spdat_youth.id} =  ${client_assessments.id};;
    }

    join: yfr_participant_survey  {
        view_label: "YFR Participant Survey"
        relationship: many_to_one
        sql_on: ${yfr_participant_survey.id} =  ${client_assessments.id};;
    }

    join: yfr_goal_setting_questionnaire  {
        view_label: "YFR Goal Setting Questionnaire"
        relationship: many_to_one
        sql_on: ${yfr_goal_setting_questionnaire.id} =  ${client_assessments.id};;
    }

    join: ces_for_families___homelessness_prevention_targeting_tool_v2  {
        view_label: "CES for Families - Homelessness Prevention Targeting Tool v2"
        relationship: many_to_one
        sql_on: ${ces_for_families___homelessness_prevention_targeting_tool_v2.id} =  ${client_assessments.id};;
    }

    join: lafh___employment_assessment  {
        view_label: "LAFH - Employment Assessment"
        relationship: many_to_one
        sql_on: ${lafh___employment_assessment.id} =  ${client_assessments.id};;
    }

    join: yfr_monthly_update_form  {
        view_label: "YFR Monthly Update Form"
        relationship: many_to_one
        sql_on: ${yfr_monthly_update_form.id} =  ${client_assessments.id};;
    }

    join: yfr_plan  {
        view_label: "YFR Plan"
        relationship: many_to_one
        sql_on: ${yfr_plan.id} =  ${client_assessments.id};;
    }

    join: yfr_program_interest_screening_form  {
        view_label: "YFR Program Interest Screening Form"
        relationship: many_to_one
        sql_on: ${yfr_program_interest_screening_form.id} =  ${client_assessments.id};;
    }

	######## End: Assessment Joins ############

}