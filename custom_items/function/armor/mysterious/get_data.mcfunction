scoreboard players set @s mysterious_count 0
scoreboard players set @s mysterious_cd 60
execute if data entity @s equipment.head.components.minecraft:custom_data.mysterious run scoreboard players add @s mysterious_count 1
execute if data entity @s equipment.chest.components.minecraft:custom_data.mysterious run scoreboard players add @s mysterious_count 1
execute if data entity @s equipment.legs.components.minecraft:custom_data.mysterious run scoreboard players add @s mysterious_count 1
execute if data entity @s equipment.feet.components.minecraft:custom_data.mysterious run scoreboard players add @s mysterious_count 1
execute if entity @s[advancements={reforge:mysterious_reforge=false}] if score @s mysterious_count matches 4.. run advancement grant @s only reforge:mysterious_reforge
execute unless score @s mysterious_count matches 1.. run return run function custom_items:display/remove {tag:"mysterious_reforge"}
execute if score @s mysterious_count matches 1.. run function custom_items:display/add {tag:"mysterious_reforge",type:"countdown",max:60,selector:"@s",score:"mysterious_cd",format:"number",color:"red",label:"🍄 Time till next effect: ",unit:"s"}