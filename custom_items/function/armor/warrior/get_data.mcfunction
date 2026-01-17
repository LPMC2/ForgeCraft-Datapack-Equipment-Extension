scoreboard players set @s warrior_count 0
scoreboard players set .current_warrior_hit const 0

execute if items entity @s armor.head *[minecraft:custom_data~{warrior:1}] run scoreboard players add @s warrior_count 1
execute if items entity @s armor.chest *[minecraft:custom_data~{warrior:1}] run scoreboard players add @s warrior_count 1
execute if items entity @s armor.legs *[minecraft:custom_data~{warrior:1}] run scoreboard players add @s warrior_count 1
execute if items entity @s armor.feet *[minecraft:custom_data~{warrior:1}] run scoreboard players add @s warrior_count 1
execute if entity @s[advancements={reforge:warrior_reforge=false}] if score @s warrior_count matches 4 run advancement grant @s only reforge:warrior_reforge
execute as @s run function custom_items:armor/warrior/reset
scoreboard players set .warrior_max_amt const 25
scoreboard players set .10 const 10
scoreboard players operation .warrior_max_amt const *= @s warrior_count
scoreboard players operation .warrior_max_amt const /= .10 const
execute unless score @s warrior_count matches 1.. run return run function custom_items:display/remove {tag:"warrior_reforge"}
data modify storage forgecraft:display temp.warrior set value {tag:"warrior_reforge",type:"status",max:10,selector:".current_warrior_hit",score:"const",format:"bar",color:"#d3002e",label:"Warrior Bonus: ",unit:"⚔"}
execute store result storage forgecraft:display temp.warrior.max int 1 run scoreboard players get .warrior_max_amt const
execute if score @s warrior_count matches 1.. run function custom_items:display/add with storage forgecraft:display temp.warrior
function custom_items:display/bar/update {tag:"warrior_reforge"}
function custom_items:display/tick