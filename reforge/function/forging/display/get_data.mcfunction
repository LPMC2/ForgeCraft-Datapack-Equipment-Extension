data modify storage minecraft:reforge temp.display.name set from entity @s Item.components.minecraft:custom_name
data modify storage minecraft:reforge temp.display.description set from entity @s Item.components.minecraft:custom_data.custom_lore.forge
execute if data storage minecraft:reforge temp.display.description[0] run data modify storage minecraft:reforge temp.display.description[0].color set value "gray"
execute if data storage minecraft:reforge temp.display.description[1] run data modify storage minecraft:reforge temp.display.description[1].color set value "gray"
execute if data storage minecraft:reforge temp.display.description[2] run data modify storage minecraft:reforge temp.display.description[2].color set value "gray"
execute if data storage minecraft:reforge temp.display.description[3] run data modify storage minecraft:reforge temp.display.description[3].color set value "gray"
execute if data storage minecraft:reforge temp.display.description[4] run data modify storage minecraft:reforge temp.display.description[4].color set value "gray"
execute if data storage minecraft:reforge temp.display.description[5] run data modify storage minecraft:reforge temp.display.description[5].color set value "gray"
execute if data storage minecraft:reforge temp.display.description[6] run data modify storage minecraft:reforge temp.display.description[6].color set value "gray"
data modify storage minecraft:reforge temp.display.description.color set value "white"
data modify storage minecraft:reforge temp.display.item set from entity @s Item
execute as @s run function reforge:forging/string_data/attribute/init
data modify storage minecraft:reforge temp.display.attributes set from storage minecraft:reforge temp.attribute.data
execute as @e[type=item_display,tag=target_forge_display_item] if score @s id = .self_id const run data modify entity @s item set from storage minecraft:reforge temp.display.item
execute as @e[type=text_display,tag=target_forge_display_text] if score @s id = .self_id const run function reforge:forging/display/set_details with storage minecraft:reforge temp.display
execute as @e[type=interaction,tag=forge_detection] if score @s id = .self_id const run data modify entity @s width set value 0.5
execute as @e[type=interaction,tag=forge_detection] if score @s id = .self_id const run data modify entity @s height set value 0.5