execute if score @s shielding_charges < @s max_shielding_charges run scoreboard players add @s shielding_cooldown 1
execute store result storage minecraft:text store.playerid int 1 run scoreboard players get @s id
execute as @s run function custom_items:armor/shielding/pre_update_actionbar with storage minecraft:text store
execute as @s if score @s shielding_cooldown matches 600.. run function custom_items:armor/shielding/add_charge