//This file will attempt to implement multiple overrides in a single file
//BAsicly the module look, the seperate part designs etc will all be design in here
//All sprites are going to go into a new DMI seperate from other RIGs
//This will be the groundwork for mechanical Fursuits

/obj/item/weapon/rig/override
	icon_override = 'icons/obj/rig_override_modules.dmi'
	name = "override control module"
	desc = "A Prototype suit not made for space, not made for combat, basically an expensive toy."
	icon = 'icons/obj/rig_override_modules.dmi' //the look of the module itself
	icon_state = "override_rig"
	suit_type = "override suit"
	//REEEEMOVE ARMOR
	armor = list(melee = 0, bullet = 0, laser = 0,energy = 0, bomb = 0, bio = 0, rad = 0) //this will be purely cosmetic
	emp_protection = 0 //No ARMOR
	//TYPES
	chest_type = /obj/item/clothing/suit/space/rig/override
	helm_type =  /obj/item/clothing/head/helmet/space/rig/override
	boot_type =  /obj/item/clothing/shoes/magboots/rig/override
	glove_type = /obj/item/clothing/gloves/gauntlets/rig/override
	cell_type =  /obj/item/weapon/cell/high/hightech //implementing special cell override
	//var/air_type =   /obj/item/weapon/tank/oxygen
	airtight = 0 //not airtight, nope
	seal_delay = 5 //totally not based on the hacker suit
	slowdown = 0
	offline_slowdown = 0
	//modular setup
	req_access = list()
	initial_modules = list()
	var/thingamount = 1

	//Gonna turn these procs into a list to pic from instead later since letting people choose this much is silly
	//Possible making Override suit into a protofursuit that can turn into any

/obj/item/weapon/rig/override/New()
	..()
	verbs += /obj/item/weapon/rig/override/proc/makething()
	verbs += /obj/item/clothing/suit/space/rig/override/rename()
	verbs += /obj/item/clothing/suit/space/rig/override/rename2()
	
/obj/item/clothing/suit/space/rig/override/proc/rename() //Possible making Override suit into a protofursuit that can turn into any
	set name = "Change icon"
	set category = "Abilities"
	set src in usr
	var/n_name = sanitizeSafe(input(usr, "What state would you like to swap to?", "Icon hotswap", null)  as text, MAX_NAME_LEN)
	item_state = n_name
	update_icon()
	return

/obj/item/clothing/suit/space/rig/override/proc/rename2()
	set name = "Change icon"
	set category = "Abilities"
	set src in usr
	var/n_name = sanitizeSafe(input(usr, "What dmi would you like to swap to?", "Icon hotswap", null)  as text, MAX_NAME_LEN)
	icon_override = n_name
	update_icon()
	return

/obj/item/weapon/rig/override/proc/makething()
	set name = "Dispense Cooling unit"
	set desc = "Yeah so like this makes a cooling unit"
	set category = "Hardsuit"
	var/location = get_turf(src)
	if(thingamount)
		new /obj/item/device/suit_cooling_unit(location)
		thingamount=!thingamount
	else
		src << "<span class='notice'>There are no units left in this dispenser.</span>"
	

/obj/item/clothing/suit/space/rig/override
	species_restricted = list(SPECIES_UNATHI) //to be refined~
	icon_override = 'icons/obj/rig_override_modules.dmi'
	item_state = "override_worn_suit"
	sprite_sheets = list(
		SPECIES_TAJ 			= 'icons/obj/rig_override_modules.dmi',
		SPECIES_SKRELL 			= 'icons/obj/rig_override_modules.dmi',
		SPECIES_UNATHI 			= 'icons/obj/rig_override_modules.dmi',
		SPECIES_NEVREAN			= 'icons/obj/rig_override_modules.dmi',
		SPECIES_AKULA 			= 'icons/obj/rig_override_modules.dmi',
		SPECIES_SERGAL			= 'icons/obj/rig_override_modules.dmi',
		SPECIES_ZORREN_FLAT		= 'icons/obj/rig_override_modules.dmi',
		SPECIES_ZORREN_HIGH	 	= 'icons/obj/rig_override_modules.dmi',
		SPECIES_VULPKANI 		= 'icons/obj/rig_override_modules.dmi',
		SPECIES_PROMETHEAN		= 'icons/obj/rig_override_modules.dmi',
		SPECIES_XENOHYBRID		= 'icons/obj/rig_override_modules.dmi',
		SPECIES_VOX 			= 'icons/obj/rig_override_modules.dmi',
		)
	icon = 'icons/obj/rig_override_modules.dmi'
	icon_state = "override_rig_suit" //this is experimental
	name = "suit"
	breach_threshold = 0
	
/obj/item/clothing/head/helmet/space/rig/override
	icon_override = 'icons/obj/rig_override_modules.dmi'
	item_state = "override_worn_helmet"
	sprite_sheets = list(
		SPECIES_TAJ 			= 'icons/obj/rig_override_modules.dmi',
		SPECIES_SKRELL 			= 'icons/obj/rig_override_modules.dmi',
		SPECIES_UNATHI 			= 'icons/obj/rig_override_modules.dmi',
		SPECIES_NEVREAN			= 'icons/obj/rig_override_modules.dmi',
		SPECIES_AKULA 			= 'icons/obj/rig_override_modules.dmi',
		SPECIES_SERGAL			= 'icons/obj/rig_override_modules.dmi',
		SPECIES_ZORREN_FLAT		= 'icons/obj/rig_override_modules.dmi',
		SPECIES_ZORREN_HIGH	 	= 'icons/obj/rig_override_modules.dmi',
		SPECIES_VULPKANI 		= 'icons/obj/rig_override_modules.dmi',
		SPECIES_PROMETHEAN		= 'icons/obj/rig_override_modules.dmi',
		SPECIES_XENOHYBRID		= 'icons/obj/rig_override_modules.dmi',
		SPECIES_VOX 			= 'icons/obj/rig_override_modules.dmi',
		)
	icon = 'icons/obj/rig_override_modules.dmi'
	icon_state = "override_rig_hood" //this is experimental
	name = "hood"
	
/obj/item/clothing/shoes/magboots/rig/override
	item_state = "override_worn_boots"
	icon_override = 'icons/obj/rig_override_modules.dmi'
	sprite_sheets = list(
		SPECIES_TAJ 			= 'icons/obj/rig_override_modules.dmi',
		SPECIES_SKRELL 			= 'icons/obj/rig_override_modules.dmi',
		SPECIES_UNATHI 			= 'icons/obj/rig_override_modules.dmi',
		SPECIES_NEVREAN			= 'icons/obj/rig_override_modules.dmi',
		SPECIES_AKULA 			= 'icons/obj/rig_override_modules.dmi',
		SPECIES_SERGAL			= 'icons/obj/rig_override_modules.dmi',
		SPECIES_ZORREN_FLAT		= 'icons/obj/rig_override_modules.dmi',
		SPECIES_ZORREN_HIGH	 	= 'icons/obj/rig_override_modules.dmi',
		SPECIES_VULPKANI 		= 'icons/obj/rig_override_modules.dmi',
		SPECIES_PROMETHEAN		= 'icons/obj/rig_override_modules.dmi',
		SPECIES_XENOHYBRID		= 'icons/obj/rig_override_modules.dmi',
		SPECIES_VOX 			= 'icons/obj/rig_override_modules.dmi',
		)
	icon = 'icons/obj/rig_override_modules.dmi'
	icon_state = "override_rig_boots" //this is experimental
	name = "shoes"
	step_volume_mod = 1
	
/obj/item/clothing/gloves/gauntlets/rig/override
	item_state = "override_worn_gauntlets"
	icon_override = 'icons/obj/rig_override_modules.dmi'
	sprite_sheets = list(
		SPECIES_TAJ 			= 'icons/obj/rig_override_modules.dmi',
		SPECIES_SKRELL 			= 'icons/obj/rig_override_modules.dmi',
		SPECIES_UNATHI 			= 'icons/obj/rig_override_modules.dmi',
		SPECIES_NEVREAN			= 'icons/obj/rig_override_modules.dmi',
		SPECIES_AKULA 			= 'icons/obj/rig_override_modules.dmi',
		SPECIES_SERGAL			= 'icons/obj/rig_override_modules.dmi',
		SPECIES_ZORREN_FLAT		= 'icons/obj/rig_override_modules.dmi',
		SPECIES_ZORREN_HIGH	 	= 'icons/obj/rig_override_modules.dmi',
		SPECIES_VULPKANI 		= 'icons/obj/rig_override_modules.dmi',
		SPECIES_PROMETHEAN		= 'icons/obj/rig_override_modules.dmi',
		SPECIES_XENOHYBRID		= 'icons/obj/rig_override_modules.dmi',
		SPECIES_VOX 			= 'icons/obj/rig_override_modules.dmi',
		)
	icon = 'icons/obj/rig_override_modules.dmi'
	icon_state = "override_rig_gauntlets" //this is experimental
	name = "gloves"
