view: interface_custom_assessments {

  dimension: id {
    label: "Assessment Id"
    primary_key: yes
    sql: ${client_assessments.id};;
  }

  dimension: ref_user {
    label: "User Creating"
    sql: ${client_assessments.ref_user} ;;
  }

  dimension: ref_user_updated {
    label: "User Updating"
    sql: ${client_assessments.ref_user_updated} ;;
  }

  dimension: assessment_score {
    type: number
    value_format: "0.##"
    sql: ${client_assessment_scores.score} ;;
  }

  dimension: custom_score_description {
    label: "Score Tier Description"
    description: "Score Range - Processor Specific"
    group_label: "Assessment Score Tiers (Per Processor)"
    type: string
    sql: ${custom_score_ranges.name} ;;
  }

  dimension: custom_score_start {
    label: "Score Range - Start"
    hidden:  yes
    description: "Score Range Start"
    group_label: "Assessment Score Tiers (Per Processor)"
    type: string
    sql: ${custom_score_ranges.start} ;;
  }

  dimension: custom_score_end {
    label: "Score Range - End"
    hidden:  yes
    description: "Score Range End"
    group_label: "Assessment Score Tiers (Per Processor)"
    type: string
    sql: ${custom_score_ranges.end} ;;
  }

  dimension: custom_score_range {
    label: "Score Tier"
    description: "Score Range"
    group_label: "Assessment Score Tiers (Per Processor)"
    type: string
    sql: CONCAT(${custom_score_ranges.start}, " - ", ${custom_score_end}) ;;
  }

  dimension: sub_score {
    type: number
    group_label: "Assessment Sub-Scores (BETA)"
    label: "Sub Score"
    sql: ${client_assessment_scores.sub_score} ;;
  }

  dimension: sub_score_description {
    type: string
    group_label: "Assessment Sub-Scores (BETA)"
    label: "Sub Score Description"
    sql: ${client_assessment_scores.sub_score_description};;
  }
}
