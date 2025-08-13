execute if score @s max_shielding_charges matches 1.. run effect clear @s minecraft:resistance
scoreboard players set @s max_shielding_charges 0
execute if data entity @s equipment.head.components.minecraft:custom_data.shielding run scoreboard players add @s max_shielding_charges 1
execute if data entity @s equipment.chest.components.minecraft:custom_data.shielding run scoreboard players add @s max_shielding_charges 1
execute if data entity @s equipment.legs.components.minecraft:custom_data.shielding run scoreboard players add @s max_shielding_charges 1
execute if data entity @s equipment.feet.components.minecraft:custom_data.shielding run scoreboard players add @s max_shielding_charges 1
execute if entity @s[advancements={reforge:supreme_reinforcement=false}] if score @s max_shielding_charges matches 1.. run advancement grant @s only reforge:supreme_reinforcement
execute if score @s max_shielding_charges < @s shielding_charges run scoreboard players operation @s shielding_charges = @s max_shielding_charges
execute as @s run function custom_items:armor/shielding/update