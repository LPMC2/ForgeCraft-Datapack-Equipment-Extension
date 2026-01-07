$data modify storage minecraft:attribute new.attribute set value {type:"minecraft:attack_damage",operation:"add_value",slot:"$(slot)"}
execute if score .itemtype id matches 1 run data modify storage minecraft:attribute new.attribute_amount set value 0.5
execute if score .itemtype id matches 2 run data modify storage minecraft:attribute new.attribute_amount set value 0.3
execute if score .itemtype id matches 3..6 run data modify storage minecraft:attribute new.attribute_amount set value 0.25
execute if score .itemtype id matches 7.. run data modify storage minecraft:attribute new.attribute_amount set value 0.5