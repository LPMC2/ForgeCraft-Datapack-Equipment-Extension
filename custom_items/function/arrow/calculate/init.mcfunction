scoreboard players set .typeid const 0
scoreboard players set .arrow_damage const 0
scoreboard players set .attribute_damage const 0
data remove storage minecraft:arrow temp.power
data modify storage minecraft:arrow temp.power set value 0
execute store result storage minecraft:arrow temp.power double 0.01 store result score .arrow_damage const run data get entity @s weapon.components.minecraft:attribute_modifiers[{type:"minecraft:attack_damage",operation:"add_value"}].amount 100
execute store result score .typeid const run data get entity @s weapon.components.minecraft:custom_data.typeid
execute if score .typeid const matches 2 run data modify entity @s damage set from storage minecraft:arrow temp.power
execute if entity @p[tag=arrow_owner,advancements={reforge:tactical_reforge=false}] if score .arrow_damage const matches 800.. run advancement grant @p[tag=arrow_owner] only reforge:tactical_reforge
execute store result storage minecraft:arrow temp.id int 1 run scoreboard players get @s id
execute as @s run function custom_data:arrow/update_arrow_damage with storage minecraft:arrow temp