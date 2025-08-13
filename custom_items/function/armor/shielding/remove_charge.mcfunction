scoreboard players remove @s shielding_charges 1
execute at @s if score @s shielding_charges matches 1.. run playsound minecraft:block.anvil.land master @a ~ ~ ~ 0.75 1.45 0
execute at @s if score @s shielding_charges matches ..0 run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.75 1.45 0
execute at @s if score @s shielding_charges matches ..0 run particle minecraft:explosion ~ ~0.65 ~ 0 0 0 1 0
execute at @s if score @s shielding_charges matches ..0 run execute as @e[type=#entity_hit_matching:targets_including_player,distance=..5] at @s run damage @s 5 minecraft:player_explosion at ~ ~ ~
execute at @s run particle item{item:"iron_block"} ~ ~0.65 ~ 0.5 0.5 0.5 0.4 20 normal
execute if score @s shielding_charges matches ..0 run scoreboard players set @s shielding_charges 0
execute as @s run function custom_items:armor/shielding/update

