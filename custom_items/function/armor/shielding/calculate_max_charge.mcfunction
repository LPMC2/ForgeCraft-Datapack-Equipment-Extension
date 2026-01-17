execute if score @s max_shielding_charges matches 1.. run effect clear @s minecraft:resistance
scoreboard players set @s max_shielding_charges 0
execute if data entity @s equipment.head.components.minecraft:custom_data.shielding run scoreboard players add @s max_shielding_charges 1
execute if data entity @s equipment.chest.components.minecraft:custom_data.shielding run scoreboard players add @s max_shielding_charges 1
execute if data entity @s equipment.legs.components.minecraft:custom_data.shielding run scoreboard players add @s max_shielding_charges 1
execute if data entity @s equipment.feet.components.minecraft:custom_data.shielding run scoreboard players add @s max_shielding_charges 1
execute if entity @s[advancements={reforge:supreme_reinforcement=false}] if score @s max_shielding_charges matches 1.. run advancement grant @s only reforge:supreme_reinforcement
execute if score @s max_shielding_charges < @s shielding_charges run scoreboard players operation @s shielding_charges = @s max_shielding_charges
execute unless score @s max_shielding_charges matches 1.. run return run function custom_items:display/remove {tag:"shielding_reforge"}
data modify storage forgecraft:display temp.shielding set value {tag:"shielding_reforge",type:"status",max:4,selector:"@s",score:"shielding_charges",format:"bar",color:"aqua",label:"Shielding Charges: ",unit:"🛡"}
execute store result storage forgecraft:display temp.shielding.max int 1 run scoreboard players get @s max_shielding_charges
execute if score @s max_shielding_charges matches 1.. run function custom_items:display/add with storage forgecraft:display temp.shielding
execute as @s run function custom_items:armor/shielding/update