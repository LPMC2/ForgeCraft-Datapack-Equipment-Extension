$data modify storage minecraft:attribute new.attribute set value {type:"minecraft:movement_speed",operation:"add_multiplied_base",slot:"$(slot)"}
#data modify storage minecraft:attribute new.attribute_amount set value 0.025
execute if score .itemtype id matches 3..6 run data modify storage minecraft:attribute new.attribute_amount set value 0.025
execute if score .itemtype id matches 1..2 run data modify storage minecraft:attribute new.attribute_amount set value 0.05
execute if score .itemtype id matches 7.. run data modify storage minecraft:attribute new.attribute_amount set value 0.05