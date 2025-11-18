tp @s ~ ~ ~ 0 0
execute at @s if block ~ ~ ~ minecraft:crafting_table run return run kill @s
setblock ~ ~ ~ minecraft:crafting_table destroy
scoreboard players add .global reforgeId 1
scoreboard players add .global id 1
scoreboard players operation @s reforgeId = .global reforgeId
summon interaction ~ ~1 ~0.5 {NoGravity:1b,Silent:1b,width:0.25f,height:0.25f,response:1b,Tags:["target_interaction_crafter", "inputitem","finit","forge_tag","crafter_slot_1"]}
summon item_display ~ ~1 ~0.5 {NoGravity:1b,Silent:1b,CustomNameVisible:1b,CustomName:{"bold":false,"color":"white","italic":false,"text":"Item"},width:1f,height:1.5f,billboard:"fixed",item_display:"fixed",Tags:["target_crafter_type_item", "displayitem","finit","forge_tag","crafter_slot_1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.1f,0f],scale:[0.25f,0.25f,0.25f]},item:{id:"minecraft:structure_void",count:1,components:{"minecraft:item_model":"minecraft:air"}}}
execute as @n[type=interaction,tag=finit,tag=crafter_slot_1] store result score @s reforgeId run scoreboard players add .global reforgeId 1
execute as @n[type=item_display,tag=finit,tag=crafter_slot_1] store result score @s reforgeId run scoreboard players get .global reforgeId
summon interaction ~ ~1 ~-0.5 {NoGravity:1b,Silent:1b,width:0.25f,height:0.25f,response:1b,Tags:["target_interaction_crafter", "inputitem","finit","forge_tag","crafter_slot_2"]}
summon item_display ~ ~1 ~-0.5 {NoGravity:1b,Silent:1b,CustomNameVisible:1b,CustomName:{"bold":false,"color":"white","italic":false,"text":"Item"},width:1f,height:1.5f,billboard:"fixed",item_display:"fixed",Tags:["target_crafter_type_item", "displayitem","finit","forge_tag","crafter_slot_2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.1f,0f],scale:[0.25f,0.25f,0.25f]},item:{id:"minecraft:structure_void",count:1,components:{"minecraft:item_model":"minecraft:air"}}}
execute as @n[type=interaction,tag=finit,tag=crafter_slot_2] store result score @s reforgeId run scoreboard players add .global reforgeId 1
execute as @n[type=item_display,tag=finit,tag=crafter_slot_2] store result score @s reforgeId run scoreboard players get .global reforgeId
summon interaction ~0.5 ~1 ~ {NoGravity:1b,Silent:1b,width:0.25f,height:0.25f,response:1b,Tags:["target_interaction_crafter", "inputitem","finit","forge_tag","crafter_slot_3"]}
summon item_display ~0.5 ~1 ~ {NoGravity:1b,Silent:1b,CustomNameVisible:1b,CustomName:{"bold":false,"color":"white","italic":false,"text":"Item"},width:1f,height:1.5f,billboard:"fixed",item_display:"fixed",Tags:["target_crafter_type_item", "displayitem","finit","forge_tag","crafter_slot_3"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.1f,0f],scale:[0.25f,0.25f,0.25f]},item:{id:"minecraft:structure_void",count:1,components:{"minecraft:item_model":"minecraft:air"}}}
execute as @n[type=interaction,tag=finit,tag=crafter_slot_3] store result score @s reforgeId run scoreboard players add .global reforgeId 1
execute as @n[type=item_display,tag=finit,tag=crafter_slot_3] store result score @s reforgeId run scoreboard players get .global reforgeId
summon interaction ~-0.5 ~1 ~ {NoGravity:1b,Silent:1b,width:0.25f,height:0.25f,response:1b,Tags:["target_interaction_crafter", "inputitem","finit","forge_tag","crafter_slot_4"]}
summon item_display ~-0.5 ~1 ~ {NoGravity:1b,Silent:1b,CustomNameVisible:1b,CustomName:{"bold":false,"color":"white","italic":false,"text":"Item"},width:1f,height:1.5f,billboard:"fixed",item_display:"fixed",Tags:["target_crafter_type_item", "displayitem","finit","forge_tag","crafter_slot_4"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.1f,0f],scale:[0.25f,0.25f,0.25f]},item:{id:"minecraft:structure_void",count:1,components:{"minecraft:item_model":"minecraft:air"}}}
execute as @n[type=interaction,tag=finit,tag=crafter_slot_4] store result score @s reforgeId run scoreboard players add .global reforgeId 1
execute as @n[type=item_display,tag=finit,tag=crafter_slot_4] store result score @s reforgeId run scoreboard players get .global reforgeId
summon interaction ~ ~1 ~ {NoGravity:1b,Silent:1b,width:0.5f,height:0.5f,response:1b,Tags:["target_interaction_crafter", "inputitem","finit","forge_tag","crafter_slot_main"]}
summon item_display ~ ~1.2 ~ {NoGravity:1b,Silent:1b,CustomNameVisible:1b,CustomName:{"bold":false,"color":"white","italic":false,"text":"Target Item"},width:1f,height:1.5f,billboard:"fixed",item_display:"fixed",Tags:["target_crafter_type_item", "displayitem","finit","forge_tag","crafter_slot_main"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.75f,0.75f,0.75f]},item:{id:"minecraft:structure_void",count:1,components:{"minecraft:item_model":"minecraft:air"}}}
execute as @n[type=interaction,tag=finit,tag=crafter_slot_main] store result score @s reforgeId run scoreboard players add .global reforgeId 1
execute as @n[type=item_display,tag=finit,tag=crafter_slot_main] store result score @s reforgeId run scoreboard players get .global reforgeId

#id Setup
execute as @e[tag=forge_tag,tag=finit] at @s run scoreboard players operation @s id = .global id

execute if score .global reforgeId matches 9999900.. run scoreboard players set .global reforgeId 0
execute if score .global id matches 9999900.. run scoreboard players set .global id 0
tag @e[tag=finit] remove finit
tag @s remove init