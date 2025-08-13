scoreboard players add @s shielding_charges 1
execute if score @s shielding_charges > @s max_shielding_charges run scoreboard players operation @s shielding_charges = @s max_shielding_charges
execute at @s run playsound minecraft:item.wolf_armor.repair master @a ~ ~ ~ 0.5 0.9 0
execute as @s run function custom_items:armor/shielding/update

scoreboard players set @s shielding_cooldown 0