execute store result storage minecraft:text store.playerid int 1 run scoreboard players get @s id
scoreboard players operation .charges const = @s shielding_charges
execute if score @s shielding_charges matches 1.. run effect give @s minecraft:resistance infinite 4 true
execute if score @s shielding_charges matches ..0 if score @s max_shielding_charges matches 1.. run effect clear @s minecraft:resistance
execute as @s run function custom_items:armor/shielding/get_charges_icon with storage minecraft:text store
execute as @s run function custom_items:armor/shielding/update_actionbar_pre with storage minecraft:text store
