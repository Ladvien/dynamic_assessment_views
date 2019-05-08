include: "interface_custom_assessments.view.lkml"
view: housing_preference {

	extends: [interface_custom_assessments]

	sql_table_name: client_assessment_data;;

	dimension: id {
        view_label: "Housing Preference"
        label: "Id -- Housing Preference"
        primary_key: yes
        sql: ${TABLE}.id;;
    }

	######## Begin: Assessment Questions ############

	dimension: c_What_City_Stay_At_Night {
        label: "Client SPA"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_What_City_Stay_At_Night'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_What_City_Stay_At_Night' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_What_City_Stay_At_Night' AS INT))
         );;
    }
	dimension: c_Community_within_LA {
        label: "Community within LA SPA"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Community_within_LA'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Community_within_LA' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Community_within_LA' AS INT))
         );;
    }
	dimension: c_MonthsInCityComm {
        label: "How many months have you stayed in that city/community (in months)?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_MonthsInCityComm'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_MonthsInCityComm' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_MonthsInCityComm' AS INT))
         );;
    }
	dimension: c_MoneytoPHA {
        label: "If you've been evicted from a PHA unit, do you owe money"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_MoneytoPHA'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_MoneytoPHA' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_MoneytoPHA' AS INT))
         );;
    }
	dimension: c_Jailin6Mo {
        label: "Have you been in jail or prison in the last 6 months?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Jailin6Mo'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Jailin6Mo' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Jailin6Mo' AS INT))
         );;
    }
	dimension: c_DateofEvictionfromDamage {
        label: " 9b1. If applicable, approximate month and year of the last eviction due to unit damage: (If you are unsure of the day, please select the first day of the month"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_DateofEvictionfromDamage'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_DateofEvictionfromDamage' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_DateofEvictionfromDamage' AS INT))
         );;
    }
	dimension: c_DateLastConviction {
        label: "10b. If yes, when was the month and year of your last conviction? (If you are unsure of the day, please select the first day of the month)"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_DateLastConviction'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_DateLastConviction' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_DateLastConviction' AS INT))
         );;
    }
	dimension: c_DateLastViolentConviction {
        label: "10d. If yes, when was the month and year of your last violent felony conviction? (If you are unsure of the day, please select the first day of the month)"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_DateLastViolentConviction'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_DateLastViolentConviction' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_DateLastViolentConviction' AS INT))
         );;
    }
	dimension: c_DateofLastEviction {
        label: "8a. If yes, approximate month and year of last eviction (If you are unsure of the day, please select the first day of the month): "
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_DateofLastEviction'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_DateofLastEviction' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_DateofLastEviction' AS INT))
         );;
    }
	dimension: c_DateofEvictionfromFraud {
        label: "9a1. If yes, approximate month and year of the last eviction due to fraud: (If you are unsure of the day, please select the first day of the month"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_DateofEvictionfromFraud'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_DateofEvictionfromFraud' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_DateofEvictionfromFraud' AS INT))
         );;
    }
	dimension: c_AdultsInUnit {
        label: "7. How many adults will this unit need to accommodate including yourself?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_AdultsInUnit'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_AdultsInUnit' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_AdultsInUnit' AS INT))
         );;
    }
	dimension: c_Felony {
        label: "10. Have you ever been convicted of a felony?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Felony'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Felony' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Felony' AS INT))
         );;
    }
	dimension: c_Eviction {
        label: "8. Have you ever been evicted from housing or abandoned a unit, of which your name was on the lease?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Eviction'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Eviction' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Eviction' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Montebello {
        label: "Montebello"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Montebello'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Montebello' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Montebello' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_MontereyPark {
        label: "MontereyPark"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_MontereyPark'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_MontereyPark' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_MontereyPark' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Newhall {
        label: "Newhall"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Newhall'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Newhall' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Newhall' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_None {
        label: "None"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_None'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_None' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_None' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_NorthHills {
        label: "North Hills"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_NorthHills'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_NorthHills' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_NorthHills' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Norwalk {
        label: "Norwalk"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Norwalk'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Norwalk' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Norwalk' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Palmdale {
        label: "Palmdale"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Palmdale'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Palmdale' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Palmdale' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_PalosVerdesEsta {
        label: "Palos Verdes Estates"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_PalosVerdesEsta'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_PalosVerdesEsta' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_PalosVerdesEsta' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Paramount {
        label: "Paramount"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Paramount'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Paramount' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Paramount' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Pasadena {
        label: "Pasadena"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Pasadena'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Pasadena' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Pasadena' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_PicoRivera {
        label: "Pico Rivera"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_PicoRivera'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_PicoRivera' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_PicoRivera' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Pomona {
        label: "Pomona"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Pomona'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Pomona' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Pomona' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_RanchoPalosVerd {
        label: "Rancho Palos Verdes"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_RanchoPalosVerd'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_RanchoPalosVerd' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_RanchoPalosVerd' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_RedondoBeach {
        label: "Redondo Beach"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_RedondoBeach'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_RedondoBeach' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_RedondoBeach' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_RollingHills {
        label: "Rolling Hills"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_RollingHills'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_RollingHills' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_RollingHills' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_RollingHillsEst {
        label: "Rolling Hills Estates"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_RollingHillsEst'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_RollingHillsEst' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_RollingHillsEst' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Rosemead {
        label: "Rosemead"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Rosemead'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Rosemead' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Rosemead' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_SandCanyon {
        label: "Sand Canyon"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_SandCanyon'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_SandCanyon' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_SandCanyon' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_SanDimas {
        label: "San Dimas"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_SanDimas'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_SanDimas' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_SanDimas' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_SanFernando {
        label: "San Fernando"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_SanFernando'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_SanFernando' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_SanFernando' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_SanGabriel {
        label: "San Gabriel"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_SanGabriel'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_SanGabriel' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_SanGabriel' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_SanMarino {
        label: "San Marino"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_SanMarino'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_SanMarino' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_SanMarino' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_SantaClarita {
        label: "Santa Clarita"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_SantaClarita'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_SantaClarita' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_SantaClarita' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_SantaFeSprings {
        label: "Santa Fe Springs"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_SantaFeSprings'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_SantaFeSprings' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_SantaFeSprings' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_SantaMonica {
        label: "Santa Monica"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_SantaMonica'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_SantaMonica' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_SantaMonica' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Saugua {
        label: "Saugua"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Saugua'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Saugua' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Saugua' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_SierraMadre {
        label: "Sierra Madre"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_SierraMadre'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_SierraMadre' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_SierraMadre' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_SignalHill {
        label: "Signal Hill"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_SignalHill'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_SignalHill' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_SignalHill' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_SouthElMonte {
        label: "South El Monte"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_SouthElMonte'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_SouthElMonte' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_SouthElMonte' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_SouthGate {
        label: "South Gate"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_SouthGate'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_SouthGate' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_SouthGate' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_SouthPasadena {
        label: "South Pasadena"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_SouthPasadena'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_SouthPasadena' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_SouthPasadena' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_TempleCity {
        label: "Temple City"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_TempleCity'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_TempleCity' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_TempleCity' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Torrance {
        label: "Torrance"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Torrance'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Torrance' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Torrance' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_UniversalCity {
        label: "UniversalCity"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_UniversalCity'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_UniversalCity' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_UniversalCity' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Valencia {
        label: "Valencia"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Valencia'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Valencia' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Valencia' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_ValleyGlen {
        label: "Valley Glen"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_ValleyGlen'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_ValleyGlen' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_ValleyGlen' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_ValleyVillage {
        label: "Valley Village"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_ValleyVillage'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_ValleyVillage' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_ValleyVillage' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_ValVerde {
        label: "Val Verde"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_ValVerde'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_ValVerde' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_ValVerde' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Vernon {
        label: "Vernon"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Vernon'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Vernon' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Vernon' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Walnut {
        label: "Walnut"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Walnut'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Walnut' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Walnut' AS INT))
         );;
    }
	dimension: c_CommunityNoHousing {
        label: "5. What community, if any, will you not accept offers for housing in?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_CommunityNoHousing'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_CommunityNoHousing' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_CommunityNoHousing' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_WestCovina {
        label: "West Covina"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_WestCovina'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_WestCovina' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_WestCovina' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_WestHollywood {
        label: "West Hollywood"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_WestHollywood'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_WestHollywood' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_WestHollywood' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_WestlakeVillage {
        label: "West lake Village"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_WestlakeVillage'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_WestlakeVillage' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_WestlakeVillage' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Whittier {
        label: "Whittier"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Whittier'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Whittier' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Whittier' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Wilmington {
        label: "Wilmington"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Wilmington'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Wilmington' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Wilmington' AS INT))
         );;
    }
	dimension: c_OtherReqs_1stFloor {
        label: "1st Floor"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherReqs_1stFloor'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherReqs_1stFloor' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherReqs_1stFloor' AS INT))
         );;
    }
	dimension: c_OtherReqs_Elevator {
        label: "Elevator"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherReqs_Elevator'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherReqs_Elevator' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherReqs_Elevator' AS INT))
         );;
    }
	dimension: c_OtherReqs_Kitchenette {
        label: "Kitchenette"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherReqs_Kitchenette'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherReqs_Kitchenette' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherReqs_Kitchenette' AS INT))
         );;
    }
	dimension: c_OtherReqs_NA {
        label: "N/A"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherReqs_NA'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherReqs_NA' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherReqs_NA' AS INT))
         );;
    }
	dimension: c_OtherReqs_Other_specifyin {
        label: "Other (specify in comments)"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherReqs_Other_specifyin'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherReqs_Other_specifyin' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherReqs_Other_specifyin' AS INT))
         );;
    }
	dimension: c_OtherReqs_PrivateBathroom {
        label: "Private Bathroom"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherReqs_PrivateBathroom'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherReqs_PrivateBathroom' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherReqs_PrivateBathroom' AS INT))
         );;
    }
	dimension: c_OtherReqs_PublicTransit {
        label: "Public Transit"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherReqs_PublicTransit'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherReqs_PublicTransit' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherReqs_PublicTransit' AS INT))
         );;
    }
	dimension: c_OtherReqs_UpperFloor {
        label: "Upper Floor"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherReqs_UpperFloor'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherReqs_UpperFloor' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherReqs_UpperFloor' AS INT))
         );;
    }
	dimension: c_parole {
        label: "13. Are you currently on parole or probation?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_parole'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_parole' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_parole' AS INT))
         );;
    }
	dimension: c_RegionforHousing_1 {
        label: "4. Is this region - where I'm surveying you right now - where you're looking to be housed? (Surveyor Note: Location may be different from answer to Q1/1a)"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_RegionforHousing_1'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_1' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_1' AS INT))
         );;
    }
	dimension: c_PaytowardsSecurityDeposit {
        label: "6. If you were able to locate housing, do you have money saved up for move-in or housing?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_PaytowardsSecurityDeposit'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_PaytowardsSecurityDeposit' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_PaytowardsSecurityDeposit' AS INT))
         );;
    }
	dimension: c_RegionforHousing_SPA1_Lancaster {
        label: "RegionforHousing SPA1 Lancaster"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_RegionforHousing_SPA1_Lancaster'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA1_Lancaster' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA1_Lancaster' AS INT))
         );;
    }
	dimension: c_RegionforHousing_SPA1_Other {
        label: "RegionforHousing SPA1 Other"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_RegionforHousing_SPA1_Other'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA1_Other' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA1_Other' AS INT))
         );;
    }
	dimension: c_RegionforHousing_SPA1_Palmdale {
        label: "RegionforHousing SPA1 Palmdale"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_RegionforHousing_SPA1_Palmdale'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA1_Palmdale' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA1_Palmdale' AS INT))
         );;
    }
	dimension: c_RegionforHousing_SPA2_Central {
        label: "RegionforHousing SPA2 Central"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_RegionforHousing_SPA2_Central'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA2_Central' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA2_Central' AS INT))
         );;
    }
	dimension: c_RegionforHousing_SPA2_East {
        label: "RegionforHousing SPA2 East"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_RegionforHousing_SPA2_East'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA2_East' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA2_East' AS INT))
         );;
    }
	dimension: c_RegionforHousing_SPA2_Glendale {
        label: "RegionforHousing SPA2 Glendale"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_RegionforHousing_SPA2_Glendale'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA2_Glendale' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA2_Glendale' AS INT))
         );;
    }
	dimension: c_pet {
        label: "15. Do you have a pet?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_pet'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_pet' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_pet' AS INT))
         );;
    }
	dimension: c_RegionforHousing_SPA2_North {
        label: "RegionforHousing SPA2 North"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_RegionforHousing_SPA2_North'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA2_North' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA2_North' AS INT))
         );;
    }
	dimension: c_RegionforHousing_SPA2_West {
        label: "RegionforHousing SPA2 West"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_RegionforHousing_SPA2_West'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA2_West' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA2_West' AS INT))
         );;
    }
	dimension: c_RegionforHousing_SPA3_Central {
        label: "RegionforHousing SPA3 Central"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_RegionforHousing_SPA3_Central'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA3_Central' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA3_Central' AS INT))
         );;
    }
	dimension: c_RegionforHousing_SPA3_East {
        label: "RegionforHousing SPA3 East"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_RegionforHousing_SPA3_East'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA3_East' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA3_East' AS INT))
         );;
    }
	dimension: c_RegionforHousing_SPA3_West {
        label: "RegionforHousing SPA3 West"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_RegionforHousing_SPA3_West'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA3_West' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA3_West' AS INT))
         );;
    }
	dimension: c_RegionforHousing_SPA4_Downtown {
        label: "RegionforHousing SPA4 Downtown"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_RegionforHousing_SPA4_Downtown'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA4_Downtown' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA4_Downtown' AS INT))
         );;
    }
	dimension: c_RegionforHousing_SPA4_Hollywood {
        label: "RegionforHousing SPA4 Hollywood"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_RegionforHousing_SPA4_Hollywood'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA4_Hollywood' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA4_Hollywood' AS INT))
         );;
    }
	dimension: c_PetType {
        label: "15a. If yes, is it a certified service animal or emotional support animal?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_PetType'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_PetType' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_PetType' AS INT))
         );;
    }
	dimension: c_RegionforHousing_SPA4_Mid_Wilshi {
        label: "RegionforHousing SPA4 Mid Wilshi"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_RegionforHousing_SPA4_Mid_Wilshi'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA4_Mid_Wilshi' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA4_Mid_Wilshi' AS INT))
         );;
    }
	dimension: c_RegionforHousing_SPA4_NorthEastL {
        label: "RegionforHousing SPA4 NorthEastL"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_RegionforHousing_SPA4_NorthEastL'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA4_NorthEastL' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA4_NorthEastL' AS INT))
         );;
    }
	dimension: c_RegionforHousing_SPA4_Silverlake {
        label: "RegionforHousing SPA4 Silverlake"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_RegionforHousing_SPA4_Silverlake'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA4_Silverlake' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA4_Silverlake' AS INT))
         );;
    }
	dimension: c_PHAEviction {
        label: "9. Were any of the evictions from Public Housing Authority units?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_PHAEviction'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_PHAEviction' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_PHAEviction' AS INT))
         );;
    }
	dimension: c_RegionforHousing_SPA5_WestLA {
        label: "RegionforHousing SPA5 WestLA"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_RegionforHousing_SPA5_WestLA'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA5_WestLA' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA5_WestLA' AS INT))
         );;
    }
	dimension: c_RegionforHousing_SPA6_North {
        label: "RegionforHousing SPA6 North"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_RegionforHousing_SPA6_North'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA6_North' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA6_North' AS INT))
         );;
    }
	dimension: c_RegionforHousing_SPA6_South {
        label: "RegionforHousing SPA6 South"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_RegionforHousing_SPA6_South'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA6_South' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA6_South' AS INT))
         );;
    }
	dimension: c_RegionforHousing_SPA6_SouthEast {
        label: "RegionforHousing SPA6 SouthEast"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_RegionforHousing_SPA6_SouthEast'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA6_SouthEast' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA6_SouthEast' AS INT))
         );;
    }
	dimension: c_RegionforHousing_SPA6_West {
        label: "RegionforHousing SPA6 West"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_RegionforHousing_SPA6_West'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA6_West' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA6_West' AS INT))
         );;
    }
	dimension: c_RegionforHousing_SPA7_LCA1_Centr {
        label: "RegionforHousing SPA7 LCA1 Centr"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_RegionforHousing_SPA7_LCA1_Centr'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA7_LCA1_Centr' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA7_LCA1_Centr' AS INT))
         );;
    }
	dimension: c_PHAFraud {
        label: "9a. If you've been evicted from a PHA unit, was it due to fraud?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_PHAFraud'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_PHAFraud' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_PHAFraud' AS INT))
         );;
    }
	dimension: c_RegionforHousing_SPA7_LCA2_North {
        label: "RegionforHousing SPA7 LCA2 North"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_RegionforHousing_SPA7_LCA2_North'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA7_LCA2_North' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA7_LCA2_North' AS INT))
         );;
    }
	dimension: c_RegionforHousing_SPA7_LCA3_South {
        label: "RegionforHousing SPA7 LCA3 South"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_RegionforHousing_SPA7_LCA3_South'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA7_LCA3_South' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA7_LCA3_South' AS INT))
         );;
    }
	dimension: c_RegionforHousing_SPA7_LCA4_LongB {
        label: "RegionforHousing SPA7 LCA4 LongB"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_RegionforHousing_SPA7_LCA4_LongB'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA7_LCA4_LongB' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA7_LCA4_LongB' AS INT))
         );;
    }
	dimension: c_RegionforHousing_SPA8_BeachCitie {
        label: "RegionforHousing SPA8 BeachCitie"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_RegionforHousing_SPA8_BeachCitie'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA8_BeachCitie' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA8_BeachCitie' AS INT))
         );;
    }
	dimension: c_RegionforHousing_SPA8_HarborArea {
        label: "RegionforHousing SPA8 HarborArea"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_RegionforHousing_SPA8_HarborArea'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA8_HarborArea' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA8_HarborArea' AS INT))
         );;
    }
	dimension: c_RegionforHousing_SPA8_LongBeach {
        label: "RegionforHousing SPA8 LongBeach"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_RegionforHousing_SPA8_LongBeach'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA8_LongBeach' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA8_LongBeach' AS INT))
         );;
    }
	dimension: c_PHAPaymentPlan {
        label: "9c1. If yes, do you have a payment plan in place?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_PHAPaymentPlan'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_PHAPaymentPlan' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_PHAPaymentPlan' AS INT))
         );;
    }
	dimension: c_RegionforHousing_SPA8_North {
        label: "RegionforHousing SPA8 North"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_RegionforHousing_SPA8_North'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA8_North' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_RegionforHousing_SPA8_North' AS INT))
         );;
    }
	dimension: c_PHAUnitDamage {
        label: "9b. If you've been evicted from a PHA unit, was it due to unit damage?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_PHAUnitDamage'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_PHAUnitDamage' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_PHAUnitDamage' AS INT))
         );;
    }
	dimension: c_SharedHousing {
        label: "Do you need shared housing? (Two or more unrelated people share a 2 or more bedroom unit)"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_SharedHousing'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_SharedHousing' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_SharedHousing' AS INT))
         );;
    }
	dimension: c_Smoking {
        label: "14. Do you need a smoking or non-smoking apartment?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_Smoking'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_Smoking' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_Smoking' AS INT))
         );;
    }
	dimension: c_SPAforHousing {
        label: "SPA for Housing"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_SPAforHousing'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_SPAforHousing' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_SPAforHousing' AS INT))
         );;
    }
	dimension: c_SurveyLocationforHousing {
        label: "Is this community - where I'm surveying you right now - where you're looking to be housed?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_SurveyLocationforHousing'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_SurveyLocationforHousing' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_SurveyLocationforHousing' AS INT))
         );;
    }
	dimension: c_ViolentFelony {
        label: "10c. If you've been convicted, were any of the felonies considered violent?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_ViolentFelony'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_ViolentFelony' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_ViolentFelony' AS INT))
         );;
    }
	dimension: c_FelonyDescription {
        label: "10a. If yes, please describe all felonies for which you have been convicted?"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_FelonyDescription'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_FelonyDescription' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_FelonyDescription' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_AgouraHills {
        label: "Agoura Hills"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_AgouraHills'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_AgouraHills' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_AgouraHills' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Alhambra {
        label: "Alhambra"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Alhambra'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Alhambra' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Alhambra' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Arcadia {
        label: "Arcadia"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Arcadia'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Arcadia' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Arcadia' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Artesia {
        label: "Artesia"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Artesia'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Artesia' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Artesia' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Avalon {
        label: "Avalon"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Avalon'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Avalon' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Avalon' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Azusa {
        label: "Azusa"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Azusa'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Azusa' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Azusa' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_BaldwinPark {
        label: "Baldwin Park"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_BaldwinPark'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_BaldwinPark' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_BaldwinPark' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Bell {
        label: "Bell"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Bell'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Bell' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Bell' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Bellflower {
        label: "Bellflower"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Bellflower'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Bellflower' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Bellflower' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_BellGardens {
        label: "Bell Gardens"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_BellGardens'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_BellGardens' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_BellGardens' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_BeverlyHills {
        label: "Beverly Hills"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_BeverlyHills'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_BeverlyHills' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_BeverlyHills' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Bradbury {
        label: "Bradbury"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Bradbury'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Bradbury' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Bradbury' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Burbank {
        label: "Burbank"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Burbank'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Burbank' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Burbank' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Calabasas {
        label: "Calabasas"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Calabasas'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Calabasas' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Calabasas' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Carson {
        label: "Carson"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Carson'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Carson' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Carson' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Cerritos {
        label: "Cerritos"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Cerritos'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Cerritos' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Cerritos' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Claremont {
        label: "Claremont"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Claremont'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Claremont' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Claremont' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Commerce {
        label: "Commerce"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Commerce'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Commerce' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Commerce' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Compton {
        label: "Compton"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Compton'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Compton' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Compton' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Covina {
        label: "Covina"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Covina'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Covina' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Covina' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Cudahy {
        label: "Cudahy"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Cudahy'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Cudahy' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Cudahy' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_CulverCity {
        label: "Culver City"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_CulverCity'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_CulverCity' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_CulverCity' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_DiamondBar {
        label: "Diamond Bar"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_DiamondBar'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_DiamondBar' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_DiamondBar' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Downey {
        label: "Downey"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Downey'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Downey' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Downey' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Duarte {
        label: "Duarte"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Duarte'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Duarte' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Duarte' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_ElMonte {
        label: "El Monte"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_ElMonte'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_ElMonte' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_ElMonte' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_ElSegundo {
        label: "El Segundo"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_ElSegundo'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_ElSegundo' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_ElSegundo' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Gardena {
        label: "Gardena"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Gardena'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Gardena' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Gardena' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Glendale {
        label: "Glendale"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Glendale'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Glendale' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Glendale' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Glendora {
        label: "Glendora"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Glendora'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Glendora' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Glendora' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_HaciendaHeights {
        label: "Hacienda Heights"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_HaciendaHeights'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_HaciendaHeights' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_HaciendaHeights' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_HarborCity {
        label: "Harbor City"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_HarborCity'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_HarborCity' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_HarborCity' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_HawaiianGardens {
        label: "Hawaiian Gardens"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_HawaiianGardens'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_HawaiianGardens' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_HawaiianGardens' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Hawthorne {
        label: "Hawthorne"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Hawthorne'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Hawthorne' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Hawthorne' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_HermoseBeach {
        label: "Hermose Beach"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_HermoseBeach'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_HermoseBeach' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_HermoseBeach' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_HiddenHills {
        label: "Hidden Hills"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_HiddenHills'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_HiddenHills' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_HiddenHills' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_HuntingtonPark {
        label: "Huntington Park"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_HuntingtonPark'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_HuntingtonPark' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_HuntingtonPark' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Industry {
        label: "Industry"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Industry'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Industry' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Industry' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Inglewood {
        label: "Inglewood"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Inglewood'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Inglewood' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Inglewood' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Irwindale {
        label: "Irwindale"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Irwindale'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Irwindale' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Irwindale' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_LaCanada {
        label: "La Canada"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_LaCanada'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_LaCanada' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_LaCanada' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_LaCanadaFlintri {
        label: "La Canada Flintri"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_LaCanadaFlintri'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_LaCanadaFlintri' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_LaCanadaFlintri' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_LaCrescenta {
        label: "La Crescenta"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_LaCrescenta'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_LaCrescenta' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_LaCrescenta' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_LaHabraHeights {
        label: "La Habra Heights"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_LaHabraHeights'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_LaHabraHeights' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_LaHabraHeights' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Lakewood {
        label: "Lakewood"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Lakewood'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Lakewood' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Lakewood' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_LaMirada {
        label: "La Mirada"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_LaMirada'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_LaMirada' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_LaMirada' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Lancaster {
        label: "Lancaster"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Lancaster'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Lancaster' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Lancaster' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_LaPuente {
        label: "La Puente"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_LaPuente'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_LaPuente' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_LaPuente' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_LaVerne {
        label: "La Verne"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_LaVerne'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_LaVerne' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_LaVerne' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Lawndale {
        label: "Lawndale"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Lawndale'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Lawndale' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Lawndale' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Lomita {
        label: "Lomita"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Lomita'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Lomita' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Lomita' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_LongBeach {
        label: "Long Beach"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_LongBeach'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_LongBeach' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_LongBeach' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_LosAngeles {
        label: "Los Angeles"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_LosAngeles'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_LosAngeles' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_LosAngeles' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Lynwood {
        label: "Lynwood"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Lynwood'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Lynwood' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Lynwood' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Malibu {
        label: "Malibu"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Malibu'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Malibu' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Malibu' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_ManhattanBeach {
        label: "Manhattan Beach"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_ManhattanBeach'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_ManhattanBeach' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_ManhattanBeach' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Maywood {
        label: "Maywood"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Maywood'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Maywood' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Maywood' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_MissionsHills {
        label: "Missions Hills"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_MissionsHills'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_MissionsHills' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_MissionsHills' AS INT))
         );;
    }
	dimension: c_OtherHomeCities_Monrovia {
        label: "Monrovia"
        group_label: "Questions"
        sql: (SELECT pl.value_name
            FROM picklist AS pl
            WHERE pl.field_name = 'c_OtherHomeCities_Monrovia'
                AND pl.code <> ''
                AND IF(COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Monrovia' AS INT) IS NULL, FALSE, 
                       pl.code = COLUMN_GET(${TABLE}.custom_data, 'c_OtherHomeCities_Monrovia' AS INT))
         );;
    }
	######## End: Assessment Questions ############

}