view: interface_custom_assessments {

  dimension: id {
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
    label: "Score"
    type: number
    value_format: "0.##"
    sql: ${client_assessment_scores.score} ;;
  }

  dimension: sub_score {
    type: number
    label: "Sub Score"
    sql: ${client_assessment_scores.sub_score} ;;
  }

  dimension: sub_score_description {
    type: string
    label: "Sub Score Description"
    sql: ${client_assessment_scores.sub_score_description};;
  }

}
