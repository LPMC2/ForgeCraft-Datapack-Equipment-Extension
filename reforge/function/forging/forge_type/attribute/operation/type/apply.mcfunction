$data modify entity @s Item.components.minecraft:attribute_modifiers[{id:"$(id)"}].amount set from storage minecraft:attribute new.amount
#$say data modify entity @s Item.components.minecraft:attribute_modifiers.modifiers[{id:"$(id)"}] --> $(amount)
execute as @s run function reforge:forging/display/attribute/check_valid with storage minecraft:attribute new