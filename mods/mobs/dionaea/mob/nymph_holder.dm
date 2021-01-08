/obj/item/holder/diona
	icon = 'mods/mobs/dionaea/icons/nymph_holder.dmi'
	icon_state = ICON_STATE_WORLD
	origin_tech = "{'magnets':3,'biotech':5}"
	slot_flags = SLOT_HEAD | SLOT_OVER_BODY | SLOT_HOLSTER
	armor = list(
		bio = ARMOR_BIO_RESISTANT, 
		rad = ARMOR_RAD_SHIELDED
	)

// Yes, you can wear a nymph on your head instead of a radiation mask.
/obj/item/holder/diona/equipped(var/mob/living/user, var/slot)
	if(slot in user.held_item_slots)
		body_parts_covered = SLOT_ARMS
	else if(slot == slot_head_str)
		body_parts_covered = SLOT_HEAD
	else if(slot == slot_wear_suit_str)
		body_parts_covered = SLOT_UPPER_BODY
	. = ..()