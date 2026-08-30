$data modify storage minecraft:attribute new.attribute set value {type:"minecraft:attack_damage",operation:"add_multiplied_base",slot:"$(slot)"}
execute if score .itemtype id matches 1..2 run data modify storage minecraft:attribute new.attribute_amount set value 0.05
execute if score .itemtype id matches 3.. run data modify storage minecraft:attribute new.attribute_amount set value 0.01
