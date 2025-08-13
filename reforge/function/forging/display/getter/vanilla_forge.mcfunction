scoreboard players set .isdisplay const 1
execute at @s run summon item ~ ~-0.5 ~ {PickupDelay:5,Age:-32768,Tags:["iteminit"],Motion:[0.0,0.25,0.0],Item:{id:"minecraft:structure_void",count:1,components:{"minecraft:custom_data":{is_empty:1}}}}
data modify entity @e[tag=iteminit,limit=1] Item.id set from storage minecraft:reforge forge_itemid
data modify entity @e[tag=iteminit,limit=1] Item.components set from storage minecraft:reforge forge_itemcomponents
data modify entity @e[tag=iteminit,limit=1] Item.components.minecraft:custom_data.itemname set from storage minecraft:reforge vanilla.name
data modify entity @e[tag=iteminit,limit=1] Item.components.minecraft:custom_data.itemtype set from storage minecraft:reforge vanilla.type
data modify entity @e[tag=iteminit,limit=1] Item.components.minecraft:custom_data.typename set from storage minecraft:reforge vanilla.typename
data modify entity @e[tag=iteminit,limit=1] Item.components.minecraft:custom_data.typeid set from storage minecraft:reforge vanilla.typeid
$data modify entity @e[tag=iteminit,limit=1] Item.components.minecraft:custom_name set value {"color":"#DEDEDE","italic":false,"text":"⚒ $(name)"}
$data modify entity @e[tag=iteminit,limit=1] Item.components.minecraft:lore set value [{"color":"dark_gray","italic":false,"text":"⚒ This item can be reforged!"},[{"color":"dark_gray","italic":false,"text":"Type: "},{"bold":true,"color":"white","italic":false,"text":"$(type)"}]]
data modify entity @e[tag=iteminit,limit=1] Item.components.minecraft:attribute_modifiers set from storage minecraft:reforge vanilla.modifier
data modify entity @e[tag=iteminit,limit=1] Item.components.minecraft:max_damage set from storage minecraft:reforge vanilla.durability
data modify entity @e[tag=iteminit,limit=1] Item.components.minecraft:damage set value 0
data modify entity @e[tag=iteminit,limit=1] Item.components.minecraft:custom_data.reforgeid set value 0
scoreboard players add .global_itemid id 1
execute store result entity @e[tag=iteminit,limit=1] Item.components.minecraft:custom_data.global_id int 1 run scoreboard players get .global_itemid id
execute as @e[tag=iteminit] if items entity @s container.0 minecraft:structure_void run kill @s
execute store result score .itemtype id run data get storage minecraft:reforge vanilla.typeid
execute if score .itemtype id matches 1..2 run data modify storage minecraft:reforge forge.slot set value "mainhand"
execute if score .itemtype id matches 7..9 run data modify storage minecraft:reforge forge.slot set value "mainhand"
execute if score .itemtype id matches 3 run data modify storage minecraft:reforge forge.slot set value "head"
execute if score .itemtype id matches 4 run data modify storage minecraft:reforge forge.slot set value "chest"
execute if score .itemtype id matches 5 run data modify storage minecraft:reforge forge.slot set value "legs"
execute if score .itemtype id matches 6 run data modify storage minecraft:reforge forge.slot set value "feet"
data remove storage minecraft:reforge forge_itemid
data remove storage minecraft:reforge forge_itemcomponents