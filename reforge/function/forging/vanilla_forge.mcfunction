scoreboard players set .isdisplay const 0
data remove storage minecraft:reforge temp.display.lore
execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 run summon item ~ ~ ~ {PickupDelay:5,Age:-32768,Tags:["iteminit"],Motion:[0.0,0.25,0.0],Item:{id:"minecraft:structure_void",count:1,components:{"minecraft:custom_data":{is_empty:1}}}}
data modify entity @n[type=item,tag=iteminit] Item.id set from storage minecraft:reforge forge_itemid
data modify entity @n[type=item,tag=iteminit] Item.components set from storage minecraft:reforge forge_itemcomponents
data modify entity @n[type=item,tag=iteminit] Item.components.minecraft:custom_data.itemname set from storage minecraft:reforge vanilla.name
data modify entity @n[type=item,tag=iteminit] Item.components.minecraft:custom_data.itemtype set from storage minecraft:reforge vanilla.type
data modify entity @n[type=item,tag=iteminit] Item.components.minecraft:custom_data.typename set from storage minecraft:reforge vanilla.typename
data modify entity @n[type=item,tag=iteminit] Item.components.minecraft:custom_data.typeid set from storage minecraft:reforge vanilla.typeid
execute as @n[type=item,tag=iteminit] if data entity @s Item.components.minecraft:lore run data modify entity @s Item.components.minecraft:custom_data.custom_lore.base set from entity @s Item.components.minecraft:lore
execute as @n[type=item,tag=iteminit] unless data entity @s Item.components.minecraft:lore run data modify entity @s Item.components.minecraft:custom_data.custom_lore.base set value {}
$data modify entity @n[type=item,tag=iteminit] Item.components.minecraft:custom_name set value {"color":"#DEDEDE","italic":false,"text":"⚒ $(name)"}
$data modify entity @n[type=item,tag=iteminit] Item.components.minecraft:custom_data.custom_lore.type set value [{"color":"dark_gray","italic":false,"text":"Type: "},{"bold":true,"color":"white","italic":false,"text":"$(type)"}]
data modify entity @n[type=item,tag=iteminit] Item.components.minecraft:custom_data.custom_lore.forge set value {"color":"dark_gray","italic":false,"text":"⚒ This item can be reforged!"}
data modify storage minecraft:reforge temp.display.lore set from entity @n[type=item,tag=iteminit] Item.components.minecraft:custom_data.custom_lore
execute as @n[type=item,tag=iteminit] run function reforge:forging/display/item/set_lore with storage minecraft:reforge temp.display.lore
data modify entity @n[type=item,tag=iteminit] Item.components.minecraft:custom_data.custom_lore.forge set value []
data modify entity @n[type=item,tag=iteminit] Item.components.minecraft:attribute_modifiers set from storage minecraft:reforge vanilla.modifier
data modify entity @n[type=item,tag=iteminit] Item.components.minecraft:max_damage set from storage minecraft:reforge vanilla.durability
data modify entity @n[type=item,tag=iteminit] Item.components.minecraft:damage set value 0
data modify entity @n[type=item,tag=iteminit] Item.components.minecraft:custom_data.reforgeid set value 0
scoreboard players add .global_itemid id 1
execute store result entity @n[type=item,tag=iteminit] Item.components.minecraft:custom_data.global_id int 1 run scoreboard players get .global_itemid id
execute as @e[tag=iteminit] if items entity @s container.0 minecraft:structure_void run kill @s
execute if entity @e[tag=iteminit] run function reforge:forging/resetreforgeitem
tag @n[type=item,tag=iteminit] remove iteminit
data remove storage minecraft:reforge forge_itemid
data remove storage minecraft:reforge forge_itemcomponents