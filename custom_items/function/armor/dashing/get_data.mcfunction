scoreboard players set @s dashing_count 0
scoreboard players set .50 const 50
execute if data entity @s equipment.head.components.minecraft:custom_data.dashing run scoreboard players add @s dashing_count 1
execute if data entity @s equipment.chest.components.minecraft:custom_data.dashing run scoreboard players add @s dashing_count 1
execute if data entity @s equipment.legs.components.minecraft:custom_data.dashing run scoreboard players add @s dashing_count 1
execute if data entity @s equipment.feet.components.minecraft:custom_data.dashing run scoreboard players add @s dashing_count 1
execute if entity @s[advancements={reforge:dashing_reforge=false}] if score @s dashing_count matches 1.. run advancement grant @s only reforge:dashing_reforge
scoreboard players operation @s max_dash_amount = @s dashing_count
scoreboard players operation @s max_dash_amount *= .50 const
execute unless score @s dashing_count matches 1.. run return run function custom_items:display/remove {tag:"dashing_reforge"}
data modify storage forgecraft:display temp.dashing set value {tag:"dashing_reforge",type:"status",max:5,selector:".current_dashing_amount",score:"const",format:"bar",color:"aqua",label:"Dashing: ",unit:"🥾"}
execute store result storage forgecraft:display temp.dashing.max int 0.05 run scoreboard players get @s max_dash_amount
execute if score @s dashing_count matches 1.. run function custom_items:display/add with storage forgecraft:display temp.dashing
scoreboard players set .current_dashing_amount const 0
function custom_items:display/bar/update {tag:"dashing_reforge"}