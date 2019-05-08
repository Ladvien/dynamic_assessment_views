include: "//clarity_basemodel/interface_custom_assessments.view.lkml"
view: ces_for_families___screening_tool {

	extends: [interface_custom_assessments]

	sql_table_name: client_assessment_data;;

	dimension: id {
        label: "Id -- CES for Families - Screening Tool"
        primary_key: yes
        sql: ${TABLE}.id;;
    }
	######## Begin: Assessment Questions ############

	dimension: c_Family_Phone {
        label: "Phone"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Family_Phone'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Family_Phone' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Family_Phone' AS INT))
         );;
    }
	dimension: c_Interviewer_Name {
        label: "Interviewer's Name"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Interviewer_Name'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Interviewer_Name' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Interviewer_Name' AS INT))
         );;
    }
	dimension: c_Feel_Safe_With_Others {
        label: "Do you feel safe with your partner or the other people you currently or used to stay with?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Feel_Safe_With_Others'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Feel_Safe_With_Others' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Feel_Safe_With_Others' AS INT))
         );;
    }
	dimension: c_Adults_Over_18 {
        label: "How many adults ( age 18 and older) are there in the household"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Adults_Over_18'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Adults_Over_18' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Adults_Over_18' AS INT))
         );;
    }
	dimension: c_Children_Under_17 {
        label: "How many children (age17 and below) are there in the household?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Children_Under_17'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Children_Under_17' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Children_Under_17' AS INT))
         );;
    }
	dimension: c_Primary_Transportation {
        label: "Primary Mode of Transportation?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Primary_Transportation'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Primary_Transportation' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Primary_Transportation' AS INT))
         );;
    }
	dimension: c_Government_Photo_ID {
        label: "Do you have a valid government-issued photo ID?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Government_Photo_ID'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Government_Photo_ID' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Government_Photo_ID' AS INT))
         );;
    }
	dimension: c_Eligible_For_HFSS {
        label: "Does the household appear to be eligible for HFSS after the initial screening?  The initial eligibility criteria are: Meets definition of Family Literally Homeless or Imminently At-risk of Homelessness"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Eligible_For_HFSS'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Eligible_For_HFSS' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Eligible_For_HFSS' AS INT))
         );;
    }
	dimension: c_Household_Not_Eligible {
        label: "Why is the household not eligible?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Household_Not_Eligible'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Household_Not_Eligible' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Household_Not_Eligible' AS INT))
         );;
    }
	dimension: c_Community_Partner_Or_FSC {
        label: "Did you, organization/agency doing the Screening, refer the household to a Community Partner or FSC (as in your own organization/agency or other FSC?)?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Community_Partner_Or_FSC'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Community_Partner_Or_FSC' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Community_Partner_Or_FSC' AS INT))
         );;
    }
	dimension: c_Community_Partner_Name {
        label: "What is the name of the Community Partner's Organization and Program Name?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Community_Partner_Name'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Community_Partner_Name' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Community_Partner_Name' AS INT))
         );;
    }
	dimension: c_Community_Partner_Zip_Code {
        label: "What is the Community Partner's program site zip code?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Community_Partner_Zip_Code'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Community_Partner_Zip_Code' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Community_Partner_Zip_Code' AS INT))
         );;
    }
	dimension: c_Appointment_Date {
        label: "What is the date that the appointment was made? (Appointment Made Date). Leave this question blank if the Appointment Made Date is the same as the Screening Date or not eligible for CES for Families (Ineligible)."
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Appointment_Date'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Appointment_Date' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Appointment_Date' AS INT))
         );;
    }
	dimension: c_Pregnant_Or_Possibly_Pregnant {
        label: "Is anyone in the household pregnant or possibly pregnant?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Pregnant_Or_Possibly_Pregnant'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Pregnant_Or_Possibly_Pregnant' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Pregnant_Or_Possibly_Pregnant' AS INT))
         );;
    }
	dimension: c_Receiving_Mental_Health_Services {
        label: "Is anyone in the household receiving mental health services?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Receiving_Mental_Health_Services'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Receiving_Mental_Health_Services' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Receiving_Mental_Health_Services' AS INT))
         );;
    }
	dimension: c_Served_US_Armed_Forces {
        label: "Have you or anyone in your household served in the U.S. Armed forces?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Served_US_Armed_Forces'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Served_US_Armed_Forces' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Served_US_Armed_Forces' AS INT))
         );;
    }
	dimension: c_DHS_Health_Center_Other_Comment {
        label: "Comment"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_DHS_Health_Center_Other_Comment'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_Other_Comment' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_DHS_Health_Center_Other_Comment' AS INT))
         );;
    }
	dimension: c_Referred_Method {
        label: "Referred Method"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Referred_Method'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Referred_Method' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Referred_Method' AS INT))
         );;
    }
	dimension: c_Outcome_of_Screening {
        label: "What is the outcome of the screening?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Outcome_of_Screening'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Outcome_of_Screening' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Outcome_of_Screening' AS INT))
         );;
    }
	dimension: c_Referral_From_URM {
        label: "Is the referral from Union Rescue Mission (URM)? (Required for PATH staff ONLY)"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Referral_From_URM'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Referral_From_URM' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Referral_From_URM' AS INT))
         );;
    }
	dimension: c_Community_Program_Zip_Code {
        label: "What is the Community Partner's program site zip code?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Community_Program_Zip_Code'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Community_Program_Zip_Code' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Community_Program_Zip_Code' AS INT))
         );;
    }
	dimension: c_PATH_staff {
        label: "Are you part of People Assisting the Homeless (PATH) staff?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_PATH_staff'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_PATH_staff' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_PATH_staff' AS INT))
         );;
    }
	dimension: c_Message_Ok {
        label: "Is it OK to leave a message?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Message_Ok'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Message_Ok' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Message_Ok' AS INT))
         );;
    }
	dimension: c_Below_Age_3 {
        label: "Is anyone in the household below the age of 3?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Below_Age_3'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Below_Age_3' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Below_Age_3' AS INT))
         );;
    }
	dimension: c_Assistance_Being_Requested {
        label: "Select the statement below which best describes the reason why caller is seeking assistance:"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Assistance_Being_Requested'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Assistance_Being_Requested' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Assistance_Being_Requested' AS INT))
         );;
    }
	dimension: c_Place_Employment {
        label: "Where is your place of employment?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Place_Employment'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Place_Employment' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Place_Employment' AS INT))
         );;
    }
	dimension: c_Why_Seeking_Service {
        label: "Why are you seeking service today?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Why_Seeking_Service'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Why_Seeking_Service' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Why_Seeking_Service' AS INT))
         );;
    }
	dimension: c_Resources_Tried_Access {
        label: "What resources have you already tried to access?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Resources_Tried_Access'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Resources_Tried_Access' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Resources_Tried_Access' AS INT))
         );;
    }
	dimension: c_Resources_Thought_About_Trying {
        label: "What resources have you thought about trying, but have not tried yet?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Resources_Thought_About_Trying'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Resources_Thought_About_Trying' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Resources_Thought_About_Trying' AS INT))
         );;
    }
	dimension: c_Stay_Last_Night {
        label: "Where did you stay last night?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Stay_Last_Night'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Stay_Last_Night' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Stay_Last_Night' AS INT))
         );;
    }
	dimension: c_Reason_Cannot_Stay {
        label: "Are there additional reasons you cannot stay there any longer? "
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Reason_Cannot_Stay'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Reason_Cannot_Stay' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Reason_Cannot_Stay' AS INT))
         );;
    }
	dimension: c_Stay_Temporary {
        label: "Do you think you and your family could stay there again temporarily?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Stay_Temporary'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Stay_Temporary' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Stay_Temporary' AS INT))
         );;
    }
	dimension: c_Help_Stay_Location {
        label: "What do you think could help you stay?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Help_Stay_Location'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Help_Stay_Location' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Help_Stay_Location' AS INT))
         );;
    }
	dimension: c_Resources_Help_Find_Place {
        label: "What resources do you have right now that could help you and your family find a temporary or permanent place?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Resources_Help_Find_Place'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Resources_Help_Find_Place' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Resources_Help_Find_Place' AS INT))
         );;
    }
	dimension: c_Services_Provided_Family {
        label: "Select the services provided to the family:"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Services_Provided_Family'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Services_Provided_Family' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Services_Provided_Family' AS INT))
         );;
    }
	dimension: c_Relationship_Stayed_Last_Night {
        label: "What is your relationship with the person where you stayed last night?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Relationship_Stayed_Last_Night'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Relationship_Stayed_Last_Night' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Relationship_Stayed_Last_Night' AS INT))
         );;
    }
	dimension: c_Name_Of_Community_Partner {
        label: "What is the name of the Community Partner's Organization and Program Name?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Name_Of_Community_Partner'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Name_Of_Community_Partner' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Name_Of_Community_Partner' AS INT))
         );;
    }
	dimension: c_NameOfCommunityPartner_Other {
        label: "What is the other name of the Community Partner's Organization and Program Name?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_NameOfCommunityPartner_Other'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_NameOfCommunityPartner_Other' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_NameOfCommunityPartner_Other' AS INT))
         );;
    }
	dimension: c_Crisis_Housing {
        label: "Will/Was this household be provided with crisis housing prior to their appointment/full assessment?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Crisis_Housing'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Crisis_Housing' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Crisis_Housing' AS INT))
         );;
    }
	dimension: c_PrimaryTransportation_Other {
        label: "Primary Mode of Transportation? Other:"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_PrimaryTransportation_Other'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_PrimaryTransportation_Other' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_PrimaryTransportation_Other' AS INT))
         );;
    }
	dimension: c_Referral_Date {
        label: "When were you referred?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Referral_Date'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Referral_Date' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Referral_Date' AS INT))
         );;
    }
	dimension: c_Verification_Participation_Status {
        label: "What is the verification date for the household's CalWORKs and GAIN Participant status? (Please skip the question if not yet verified)"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Verification_Participation_Status'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Verification_Participation_Status' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Verification_Participation_Status' AS INT))
         );;
    }
	dimension: c_Voucher_Costs {
        label: "What is the total cost of the voucher(s) provided? Please enter the amount in the answer field."
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Voucher_Costs'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Voucher_Costs' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Voucher_Costs' AS INT))
         );;
    }
	dimension: c_Voucher_Nights {
        label: "For how many nights was the household provided the voucher for? Please enter the number of nights in the answer field."
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Voucher_Nights'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Voucher_Nights' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Voucher_Nights' AS INT))
         );;
    }
	dimension: c_Word_Of_Mouth {
        label: "How did you hear about the HFSS?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Word_Of_Mouth'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Word_Of_Mouth' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Word_Of_Mouth' AS INT))
         );;
    }
	dimension: c_Word_Of_Mouth_Other {
        label: "If you heard about the HFSS by an other source, specify:"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Word_Of_Mouth_Other'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Word_Of_Mouth_Other' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Word_Of_Mouth_Other' AS INT))
         );;
    }
	######## End: Assessment Questions ############

}