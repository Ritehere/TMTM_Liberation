// This file allows you to add content to the mission without conflict issues after each update of the original classnames.sqf
// If you want more modifications to be supported by this file, let's discuss it on the forums.



// *** SUPPORT STUFF ***

// Setting a value here will overwrite the original value found from the mission. Do that if you're doing a total conversion.
// Each of these should be unique, the same classnames for different purposes may cause various unpredictable issues with player actions. Or not. Just don't try.
FOB_typename = nil;						// Default "Land_Cargo_HQ_V1_F";
FOB_box_typename = nil;					// Default "B_Slingload_01_Cargo_F";
FOB_truck_typename = nil;				// Default "B_Truck_01_box_F";
Arsenal_typename = nil;					// Default "B_supplyCrate_F";
Respawn_truck_typename = nil;			// Default "B_Truck_01_medical_F";
huron_typename = nil;					// Default "B_Heli_Transport_03_unarmed_F";
ammobox_b_typename = nil;				// Default "Box_NATO_AmmoVeh_F";
ammobox_o_typename = nil;				// Default "Box_East_AmmoVeh_F";
opfor_ammobox_transport = nil;			// Default "O_Truck_03_transport_F";    // Make sure this thing can transport ammo boxes (see box_transport_config down below) otherwise things will break
commander_classname = nil;				// Default "B_officer_F"
crewman_classname = nil;				// Default "B_crew_F";
pilot_classname = nil;					// Default "B_Helipilot_F";





// *** FRIENDLIES ***

// Each array below represents one page of the build menu
// Format : [ "classname", manpower, ammo, fuel ]
// Example : [ "B_APC_Tracked_01_AA_F", 0, 40, 15 ],

// If overwrite is set to true, then the extension list will entirely replace the original list defined in classnames.sqf. Otherwise it will be appended to it.
// Useful for total conversions to RHS and such, without having to alter the original file.
infantry_units_overwrite = false;
infantry_units_extension = [
	["B_soldier_SL_F",4,0,0],
	["B_soldier_TL_F",4,0,0],
    ["B_CTRG_Soldier_TL_tna_F",7,0,0],
    ["B_CTRG_Soldier_tna_F",8,0,0],
    ["B_CTRG_Soldier_LAT_tna_F",12,5,0],
    ["B_CTRG_Soldier_Medic_tna_F",8,0,0],
    ["B_CTRG_Soldier_M_tna_F",10,0,0],
    ["B_CTRG_Soldier_Exp_tna_F",13,5,0],
    ["B_CTRG_Soldier_AR_tna_F",12,0,0]
];

light_vehicles_overwrite = false;
light_vehicles_extension = [
	["CUP_B_MTVR_USMC",0,0,4],
    ["CUP_B_Ural_CDF",0,0,2],
	["CUP_B_Ural_CDF",0,0,4],
    ["CUP_B_UAZ_Unarmed_CDF",0,0,1],
    ["CUP_B_UAZ_AGS30_CDF",0,10,3],
    ["CUP_B_UAZ_METIS_CDF",0,10,3],
    ["CUP_B_UAZ_SPG9_CDF",0,10,3],
    ["CUP_B_BRDM2_CDF",0,10,5],
    ["CUP_B_BRDM2_ATGM_CDF",0,30,5],
    ["CUP_B_BTR60_CDF",0,30,10],
    ["CUP_B_BM21_CDF",0,2000,10],
	["rhsusf_m998_w_4dr",0,0,2],
	["rhsusf_rg33_m2_d",0,10,3],
	["CUP_B_Dingo_GER_Wdl",0,10,5],
	["CUP_B_Dingo_GL_GER_Wdl",0,20,5],
	["fsf_fnk_norm_ce",0,0,3],
	["greuh_fnk_norm_ce",0,0,3],
	["CUP_I_SUV_Armored_ION",0,5,1],
	["I_MRAP_03_F",0,0,3],
	["I_MRAP_03_hmg_F",0,10,3],
	["I_MRAP_03_gmg_F",0,20,3],
	["O_T_MRAP_02_ghex_F",0,0,5],
	["O_T_MRAP_02_hmg_ghex_F",0,40,8],
	["O_T_MRAP_02_gmg_ghex_F",0,40,8],
    ["IP_B_KSK_MRAP_03_hmg_Tropic_F",0,10,3],
    ["IP_B_KSK_MRAP_03_gmg_Tropic_F",0,20,3],
    ["IP_B_KSK_MRAP_03_Tropic_F",0,0,3],
	["fsf_fnk_hmg_ce",0,10,3],
    ["rhsusf_rg33_m2_usmc_wd",0,10,10],
	["greuh_fnk_hmg_ce",0,10,3],
	["greuh_fnk_hmg_dsrt",0,10,3],
    ["B_LSV_01_armed_F",0,5,3],
    ["B_LSV_01_unarmed_F",0,0,2],
    ["IP_B_KSK_LSV_01_armed_black_F",0,5,3],
    ["IP_B_KSK_LSV_01_unarmed_black_F",0,0,2],
    ["CUP_B_M1030",0,0,0],
    ["CUP_B_HMMWV_Unarmed_USMC",0,0,3],
    ["CUP_B_HMMWV_M2_USMC",0,5,3],
    ["CUP_B_HMMWV_MK19_USMC",0,10,3],
    ["CUP_B_HMMWV_TOW_USMC",0,20,3],
    ["CUP_B_HMMWV_M1114_USMC",0,0,3],
    ["CUP_B_UAZ_AGS30_ACR",0,10,1],
    ["CUP_B_UAZ_MG_ACR",0,5,1],
    ["CUP_B_UAZ_METIS_ACR",0,15,1],
    ["CUP_B_UAZ_SPG9_ACR",0,7,1],
    ["CUP_B_UAZ_Unarmed_ACR",0,0,1],
    ["CUP_B_UAZ_Open_ACR",0,0,1],
    ["CUP_B_RG31_M2_OD_USMC",0,10,5],
    ["CUP_B_RG31_Mk19_OD_USMC",0,15,5],
    ["CUP_B_HMMWV_Avenger_USMC",0,40,3],
    ["CUP_B_BAF_Coyote_L2A1_W",0,10,8],
    ["CUP_B_BAF_Coyote_GMG_W",0,20,8],
    ["CUP_B_Jackal2_GMG_GB_W",0,20,4],
    ["CUP_B_Jackal2_L2A1_GB_W",0,10,4],
    ["CUP_B_LR_MG_GB_W",0,5,2],
    ["CUP_B_LR_Transport_GB_W",0,0,2],
    ["CUP_B_LR_Special_GMG_GB_W",0,20,2],
    ["CUP_B_LR_Special_M2_GB_W",0,10,2],
    ["CUP_B_Mastiff_HMG_GB_W",0,10,10],
    ["CUP_B_Mastiff_GMG_GB_W",0,20,10],
    ["CUP_B_Ridgback_GMG_GB_W",0,20,5],
    ["CUP_B_Ridgback_HMG_GB_W",0,10,5],
    ["CUP_B_Wolfhound_GMG_GB_W",0,20,10],
    ["CUP_B_Wolfhound_HMG_GB_W",0,10,10],
    ["B_CTRG_LSV_01_light_F",0,0,2]
];

heavy_vehicles_overwrite = false;
heavy_vehicles_extension = [
	["I_APC_Wheeled_03_cannon_F",0,50,10],
    ["IP_B_KSK_MBT_03_cannon_Tropic_F",0,100,25],
	["I_MBT_03_cannon_F",0,100,25],
    ["CUP_B_Challenger2_NATO",0,120,25],
    ["CUP_B_BMP2_CDF",0,50,10],
    ["CUP_B_T72_CDF",0,75,20],
    ["CUP_B_T72_CZ",0,75,20],
    ["CUP_B_BMP2_CZ",0,30,10],
    ["CUP_I_ZSU23_AAF",0,50,15],
    ["CUP_B_Challenger2_Woodland_BAF",0,120,25],
    ["CUP_B_Challenger2_2CW_BAF",0,120,25],
    ["CUP_B_Challenger2_Green_CTRG",0,120,25],
	["CUP_B_M1126_ICV_M2_Woodland",0,10,10],
	["CUP_B_M1126_ICV_MK19_Woodland",0,15,10],
	["CUP_B_M1128_MGS_Woodland",0,25,10],
	["CUP_B_M1135_ATGMV_Woodland",0,40,10],
	["CUP_B_M1129_MC_MK19_Woodland",0,60,15],
    ["IP_B_KSK_APC_Wheeled_03_cannon_tropic_F",0,40,15],
	["I_APC_tracked_03_cannon_F",0,40,15],
    ["CUP_B_M1A1_Woodland_US_Army",0,90,30],
    ["CUP_B_M1A2_TUSK_MG_US_Army",0,90,30],
    ["rhsusf_m113_usarmy",0,10,10],
    ["rhsusf_m113_usarmy_M240",0,5,10],
    ["rhsusf_m113_usarmy_MK19",0,20,10],
    ["RHS_M2A3_BUSKIII_wd",0,50,30],
    ["RHS_M6_wd",0,20,30],
    ["RHS_M2A2_BUSKI_WD",0,40,30],
    ["rhsusf_m1a1fep_od",0,100,40],
    ["rhsusf_m1a2sep1tuskiiwd_usarmy",0,100,40],
    ["rhsusf_m1a1aim_tuski_wd",0,100,40],
    ["CUP_B_M270_DPICM_USMC",0,3000,50],
    ["CUP_B_M270_HE_USMC",0,3000,50],
    ["CUP_B_AAV_USMC",0,15,20],
    ["CUP_B_M163_USA",0,20,5],
    ["CUP_B_M6LineBacker_USA_W",0,50,15],
    ["CUP_B_M2Bradley_USA_W",0,60,20],
    ["CUP_B_M2A3Bradley_USA_W",65,0,20],
    ["CUP_B_M113_USA",0,5,5],
    ["CUP_B_LAV25_USMC",0,25,15],
    ["CUP_B_FV432_Bulldog_GB_W_RWS",0,10,10],
    ["CUP_B_FV432_Bulldog_GB_W",0,5,10],
    ["CUP_B_FV510_GB_W_SLAT",0,50,10],
    ["CUP_B_FV510_GB_W",0,45,10],
    ["CUP_B_MCV80_GB_W_SLAT",0,40,10],
    ["CUP_B_MCV80_GB_W",0,35,10],
    ["rhsusf_M1117_W",0,20,40]
];

air_vehicles_overwrite = false;
air_vehicles_extension = [
	["greuh_aw159_t",0,0,12],
	["greuh_aw159_a",0,50,12],
	["I_Heli_light_03_unarmed_F",0,0,12],
	["I_Heli_light_03_F",0,50,12],
	["JNS_Skycrane_BLU_Black",0,0,18],
	["RHS_CH_47F",0,20,20],
    ["rhsusf_f22",0,350,40],
    ["rhsusf_CH53E_USMC",0,0,25],
    ["B_T_VTOL_01_armed_F",0,350,40],
    ["B_T_VTOL_01_infantry_F",0,0,30],
    ["B_T_VTOL_01_vehicle_F",0,0,35],
	["greuh_eh101_gr",0,0,25],
	["I_Heli_Transport_02_F",0,0,20],
    ["CUP_I_Mi24_Mk4_AT_AAF",0,150,20],
    ["CUP_I_Mi24_Mk4_AT_ION",0,150,20],
    ["CUP_I_Mi24_Mk4_S8_GSh_ION",0,150,20],
    ["CUP_B_F35B_CAS_USMC",0,400,45],
    ["CUP_B_F35B_AA_USMC",0,400,45],
    ["CUP_B_MV22_VIV_USMC",0,0,25],
    ["CUP_B_MV22_USMC_RAMPGUN",0,10,25],
    ["CUP_B_MV22_USMC",0,0,25],
    ["CUP_B_C130J_Cargo_USMC",0,0,50],
    ["CUP_B_C130J_USMC",0,0,50],
    ["RHS_MELB_AH6M_M",0,35,10],
    ["RHS_MELB_AH6M_L",0,30,10],
    ["RHS_MELB_AH6M_H",0,40,10],
    ["RHS_MELB_MH6M",0,0,10],
    ["CUP_B_AV8B_GBU12_USMC",0,120,30],
    ["CUP_B_AV8B_AGM_USMC",0,120,30],
    ["RHS_MELB_H6M",0,0,10],
    ["FIR_F14D",0,135,35],
    ["FIR_F15C",0,150,35],
    ["FIR_F15D",0,150,35],
    ["FIR_F16C",0,160,35],
    ["FIR_F2A",0,135,35],
    ["JS_JC_FA18E",0,180,40],
    ["JS_JC_FA18F",0,180,40],
    ["JS_S_FA18X",0,200,40],
    ["F_35C",0,300,50],
	["MV22",0,0,25],
    ["RHS_UH1Y_GS",0,30,15],
    ["RHS_AH1Z_wd",0,75,20],
    ["RHS_AH64D_wd",0,250,15],
    ["RHS_UH60M",0,10,15],
    ["RHS_AH64DGrey",0,250,15],
    ["B_T_UAV_03_F",0,80,30],
    ["CUP_B_UH1D_GER_KSK",0,10,8],
    ["CUP_B_CH53E_GER",0,0,25],
    ["CUP_B_CH53E_VIV_GER",0,0,25],
    ["CUP_B_CH53E_USMC",0,0,25],
    ["CUP_B_CH53E_VIV_USMC",0,0,25],
    ["B_Heli_Transport_03_USMC",0,20,15],
    ["uh1h_Shark",0,30,8],
    ["UH1H_LMG",0,5,8],
    ["UH1H_FFV",0,0,8],
    ["UH1H_Gunship",0,30,8],
    ["UH1H_Closed",0,0,8],
    ["B_CTRG_Heli_Transport_01_sand_F",0,20,12],
    ["B_CTRG_Heli_Transport_01_tropic_F",0,20,12],
    ["CUP_B_AH1Z_USMC",0,100,15],
    ["CUP_I_AH1Z_AAF",0,100,15],
    ["CUP_B_UH1Y_GUNSHIP_USMC",0,50,7],
    ["CUP_B_UH1Y_UNA_USMC",0,0,7],
    ["CUP_B_USMC_MQ9",0,80,20],
    ["CUP_B_A10_AT_USA",0,250,30],
    ["CUP_B_A10_CAS_USA",0,200,30],
    ["CUP_B_AH6X_USA",0,0,3],
    ["CUP_B_AH64D_MR_USA",0,100,20],
	["CUP_B_MH6M_USA",0,0,8],
    ["CUP_B_AH6M_AT_USA",0,50,8],
    ["CUP_B_AH6M_MP_USA",0,30,8],
	["CUP_B_AH6M_Escort_GAU_USA",0,30,8],
	["CUP_B_AH6M_AT_GAU_USA",0,40,8],
	["CUP_B_AH6M_Cannons_USA",0,20,8],
    ["CUP_B_CH47F_USA",0,10,15],
    ["CUP_B_CH47F_VIV_USA",0,10,15],
    ["CUP_B_MH60S_USMC",0,10,12],
    ["CUP_B_UH60M_US",0,10,12],
    ["CUP_B_UH60M_FFV_US",0,10,12],
	["CUP_B_UH60M_Unarmed_US",0,0,12],
    ["CUP_B_AW159_Cannon_RN_Grey",0,30,15],
    ["CUP_B_AW159_Hellfire_RN_Grey",0,50,15],
    ["CUP_B_AW159_Unarmed_RN_Grey",0,0,15],
    ["CUP_B_Merlin_HC3_Armed_GB",0,10,20],
    ["CUP_B_Merlin_HC3_GB",0,0,20],
    ["CUP_B_Merlin_HC3A_GB",0,0,20],
    ["CUP_B_SA330_Puma_HC2_BAF",0,0,10],
    ["CUP_B_Mi171Sh_ACR",0,60,20],
    ["CUP_B_Mi24_D_CDF",0,50,20],
    ["CUP_B_Mi35_CZ",0,100,20],
    ["CUP_B_Mi35_CZ_Tiger",0,100,20],
	["CUP_I_SU34_AGM_AAF",0,150,30],
	["CUP_B_Su25_CDF",0,125,25],
    ["TMTM_B_Su39C_AT_CDF",0,200,30],
    ["TMTM_B_Su39C_AT_CDF",0,200,30],
	["I_Plane_Fighter_03_AA_F",0,50,20],
	["I_Plane_Fighter_03_CAS_F",0,100,20],
	["CUP_B_MH60L_DAP_2x_Multi_US",0,40,12],
	["CUP_B_MH60L_DAP_4x_Multi_US",0,80,12]
];

static_vehicles_overwrite = false;
static_vehicles_extension = [
    ["CUP_B_TOW_TriPod_US",0,30,0],
    ["CUP_B_M2StaticMG_US",0,5,0],
    ["CUP_B_M119_US",0,200,0],
    ["CUP_B_M2StaticMG_MiniTripod_US",0,5,0],
    ["CUP_B_DSHKM_ACR",0,5,0],
    ["CUP_B_AGS_ACR",0,20,0]
];

buildings_overwrite = false;
buildings_extension = [
    ["USMC_WarfareBAircraftFactory",0,0,0],
    ["USMC_WarfareBAntiAirRadar",0,0,0],
    ["USMC_WarfareBArtilleryRadar",0,0,0],
    ["USMC_WarfareBFieldhHospital",0,0,0],
    ["USMC_WarfareBHeavyFactory",0,0,0],
    ["LAV25_HQ_unfolded",0,0,0],
    ["USMC_WarfareBLightFactory",0,0,0],
    ["USMC_WarfareBUAVterminal",0,0,0],
    ["USMC_WarfareBVehicleServicePoint",0,0,0],
    ["Land_Cargo_Tower_V1_F",0,0,0],
    ["Land_Dome_Small_F",0,0,0],
    ["Land_Dome_Big_F",0,0,0]
];

support_vehicles_overwrite = false;		// If you're going to overwrite this, make sure you have at least Arsenal_typename, Respawn_truck_typename, FOB_box_typename and FOB_truck_typename in there
support_vehicles_extension = [
    ["FIR_Baseplate",0,10,10],
    ["rhsusf_M977A4_REPAIR_BKIT_M2_usarmy_wd",0,10,10],
    ["rhsusf_M977A4_AMMO_BKIT_M2_usarmy_wd",0,40,10],
    ["rhsusf_M978A4_BKIT_usarmy_wd",0,0,30],
    ["CUP_B_MTVR_Repair_USMC",0,10,10],
    ["CUP_B_MTVR_Ammo_USMC",0,40,10],
    ["CUP_B_MTVR_Refuel_USMC",0,0,30],
	["JNS_Skycrane_Pod_Bench_BLU_Black",5,0,0],
	["JNS_Skycrane_Pod_Ammo_BLU_Black",5,0,0],
	["JNS_Skycrane_Pod_Medical_BLU_Black",5,0,0],
	["JNS_Skycrane_Pod_Repair_BLU_Black",5,0,0],
	["JNS_Skycrane_Pod_Transport_BLU_Black",5,0,0]
];

// All the UAVs must be declared here, otherwise there shall be UAV controlling issues. Namely: you won't be able to control them.
uavs = [
    "B_T_UAV_03_F",
    "CUP_B_AH6X_USA",
    "CUP_B_USMC_MQ9",
    "UAV_Drakon"
];

// Pre-made squads for the commander build menu. These shouldn't exceed 10 members.
// Light infantry squad
blufor_squad_inf_light = [

];

// Heavy infantry squad
blufor_squad_inf = [

];

// AT specialists squad
blufor_squad_at = [

];

// AA specialists squad
blufor_squad_aa = [

];

// Force recon squad
blufor_squad_recon = [

];

// Paratroopers squad
blufor_squad_para = [

];







// *** BADDIES ***

// All OPFOR infantry. Defining a value here will replace the default value from the original mission.
opfor_sentry = nil;
opfor_rifleman = nil;
opfor_grenadier = nil;
opfor_squad_leader = nil;
opfor_team_leader = nil;
opfor_marksman = nil;
opfor_machinegunner = nil;
opfor_heavygunner = nil;
opfor_medic = nil;
opfor_rpg = nil;
opfor_at = nil;
opfor_aa = nil;
opfor_officer = nil;
opfor_sharpshooter = nil;
opfor_sniper = nil;
opfor_engineer = nil;
opfor_paratrooper = nil;

// OPFOR Vehicles to be used in secondary objectives
opfor_mrap = nil;
opfor_mrap_armed = nil;
opfor_transport_helo = nil;
opfor_transport_truck = nil;
opfor_fuel_truck = nil;
opfor_ammo_truck = nil;
opfor_fuel_container = nil;
opfor_ammo_container = nil;
opfor_flag = nil;

// Militia infantry. Soldier classnames the game will pick from randomly
militia_squad_overwrite = false;
militia_squad_extension = [
];

// Militia vehicles to choose from
militia_vehicles_overwrite = false;
militia_vehicles_extension = [
    "rhsgref_ins_btr60",
    "rhsgref_ins_zsu234",
    "rhsgref_ins_uaz_spg9",
    "rhsgref_ins_uaz_dshkm",
    "rhsgref_ins_uaz_ags",
    "rhsgref_ins_bmp1",
    "rhsgref_ins_t72ba",
    "rhsgref_BRDM2_ins",
    "rhsgref_ins_ural_Zu23",
    "rhsgref_ins_gaz66_zu23"
];

// All the vehicles that can spawn as sector defenders and patrols
opfor_vehicles_overwrite = false;
opfor_vehicles_extension = [
];

// Same with lighter choices to be used  when the alert level is low
opfor_vehicles_low_intensity_overwrite = false;
opfor_vehicles_low_intensity_extension = [
];

// All the vehicles that can spawn as battlegroup members
opfor_battlegroup_vehicles_overwrite = false;
opfor_battlegroup_vehicles_extension = [
];

// Same with lighter choices to be used  when the alert level is low
opfor_battlegroup_vehicles_low_intensity_overwrite = false;
opfor_battlegroup_vehicles_low_intensity_extension = [
];

// All the vehicles that can spawn as battlegroup members (see above) and also hold 8 soldiers as passengers.
// If something in here can't hold all 8 soldiers then buggy behaviours may occur
opfor_troup_transports_overwrite = false;
opfor_troup_transports_extension = [

];

// Battlegroup members that will need to spawn in flight. Should be only helos but, who knows
opfor_choppers_overwrite = false;
opfor_choppers_extension = [
];

// Opfor military aircrafts
opfor_air_overwrite = false;
opfor_air_extension = [
];





// Other stuff

// Civilians
civilians_overwrite = false;
civilians_extension = [

];

// Civilian vehicles
civilian_vehicles_overwrite = false;
civilian_vehicles_extension = [
    "ivory_rs4",
    "ivory_e36",
    "ivory_m3",
    "ivory_suburban",
    "ivory_isf",
    "ivory_lfa",
    "ivory_190e",
    "ivory_evox",
    "ivory_gt500",
    "ivory_wrx",
    "C_Offroad_02_unarmed_F",
    "CUP_C_Golf4_random_Civ",
    "C_Truck_02_covered_F",
    "C_Truck_02_box_F",
    "C_Truck_02_fuel_F"
];

// Everything the AI troups should be able to resupply from
ai_resupply_sources_extension = [

];

// Everything that can resupply other vehicles
vehicle_repair_sources_extension = [

];
vehicle_rearm_sources_extension = [

];
vehicle_refuel_sources_extension = [

];

// Elite vehicles that should be unlocked through military base capture.
elite_vehicles_extension = [
	"Steve_MBT_Kuma",
	"Burnes_FV4034_01",
	"RHS_AH1Z_wd_GS",
	"B_T_VTOL_01_armed_F",
	"rhsusf_f22",
	"CUP_I_Mi24_Mk4_AT_ION",
	"CUP_I_Mi24_Mk4_AT_AAF",
	"RHS_AH64DGrey",
	"RHS_AH64D_wd",
	"JS_JC_FA18E",
	"JS_JC_FA18F",
	"JS_S_FA18X",
	"greuh_pandur_wdld",
	"RHS_M2A3_BUSKIII_wd",
	"F_35C",
	"CUP_B_F35B_CAS_USMC",
	"CUP_B_F35B_AA_USMC",
	"USAF_F35A",
	"rhsusf_m1a1fep_od",
	"rhsusf_m1a2sep1tuskiiwd_usarmy",
	"rhsusf_m1a1aim_tuski_wd",
	"FIR_F16C",
	"FIR_F15E"
];

// Blacklisted arsenal items such as deployable weapons  that should be bought instead
// Useless if you're using a predefined arsenal in arsenal.sqf
blacklisted_from_arsenal_extension = [
	"RHS_Podnos_Bipod_Bag",
	"RHS_Podnos_Gun_Bag",
	"RHS_Metis_Gun_Bag",
	"RHS_Metis_Tripod_Bag",
	"RHS_AGS30_Tripod_Bag",
	"RHS_AGS30_Gun_Bag",
	"RHS_DShkM_Gun_Bag",
	"RHS_DShkM_TripodHigh_Bag",
	"RHS_DShkM_TripodLow_Bag",
	"RHS_Kord_Tripod_Bag",
	"RHS_Kord_Gun_Bag",
	"RHS_M2_Gun_Bag",
	"RHS_M2_Tripod_Bag",
	"rhs_M252_Gun_Bag",
	"rhs_M252_Bipod_Bag",
	"RHS_M2_MiniTripod_Bag",
	"RHS_Mk19_Gun_Bag",
	"RHS_Mk19_Tripod_Bag",
	"RHS_NSV_Tripod_Bag",
	"RHS_NSV_Gun_Bag",
	"RHS_SPG9_Gun_Bag",
	"RHS_SPG9_Tripod_Bag",
	"rhs_Tow_Gun_Bag",
	"rhs_TOW_Tripod_Bag"
];

// Configuration for ammo boxes transport
// First entry: classname
// Second entry: how far behind the vehicle the boxes should be unloaded
// Following entries: attachTo position for each box, the number of boxes that can be loaded is derived from the number of entries
box_transport_config_extension = [
	[ "greuh_eh101_gr", -6.5, [0,	4.2,	-1.45], [0,	2.5,	-1.45], [0,	0.8, -1.45], [0,	-0.9, -1.45] ]
];