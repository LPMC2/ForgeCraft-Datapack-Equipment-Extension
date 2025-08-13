# Required Setup:
# Set data to the storge : minecraft:attribute new.attribute
# Example: data modify storage minecraft:attribute new.attribute set value {type:"minecraft:attack_speed",operation:"add_multiplied_total",slot:"$(slot)"}
# Example: data modify storage minecraft:attribute new.attribute_id set value $(uuid5)
# Example: data modify storage minecraft:attribute new.attribute_amount set value 1.5
execute store result score .attribute_length const run data get entity @s[type=item] Item.components.minecraft:attribute_modifiers
execute as @s run function reforge:forging/forge_type/attribute/operation/find/action with storage minecraft:attribute new