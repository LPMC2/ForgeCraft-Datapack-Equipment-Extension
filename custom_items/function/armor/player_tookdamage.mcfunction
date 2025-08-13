execute if score @s max_shielding_charges matches 1.. if score @s shielding_charges matches 1.. run function custom_items:armor/shielding/remove_charge
execute if score @s warrior_count matches 1.. run function custom_items:armor/warrior/on_hit
advancement revoke @s only entity_hit_matching:player_hit