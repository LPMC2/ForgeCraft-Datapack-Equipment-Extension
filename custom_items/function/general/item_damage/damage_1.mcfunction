scoreboard players set .unbreaking const 0
scoreboard players set .current_damage const 0
execute store result score .unbreaking const run data get entity @s SelectedItem.components.minecraft:enchantments.levels.minecraft:unbreaking
execute if score .unbreaking const matches 1 if predicate reforge:unbreaking1 run return fail
execute if score .unbreaking const matches 2 if predicate reforge:unbreaking2 run return fail
execute if score .unbreaking const matches 3.. if predicate reforge:unbreaking3 run return fail
execute store result score .current_damage const run data get entity @s SelectedItem.components.minecraft:damage
execute store result score .maxdamage const run data get entity @s SelectedItem.components.minecraft:max_damage
execute store result score .maxdamage_store const run data get entity @s SelectedItem.components.minecraft:max_damage
scoreboard players set .-20310 const -20310
scoreboard players add .current_damage const 1
scoreboard players operation .current_damage const -= .maxdamage const
scoreboard players operation .current_damage const *= .-20310 const

scoreboard players operation .current_damage const /= .maxdamage const

scoreboard players operation .currentdamage const = .current_damage const
item modify entity @s weapon.mainhand custom_items:item_damage_set