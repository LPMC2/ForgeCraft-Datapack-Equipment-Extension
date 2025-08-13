scoreboard players set @s supervision 0
execute store result score .unbreaking const run data get entity @s equipment.head.components.minecraft:enchantments.levels.minecraft:unbreaking
execute if score .unbreaking const matches 0 run function custom_items:armor/supervision/take_item_damage
execute if score .unbreaking const matches 1 unless predicate reforge:unbreaking1 run function custom_items:armor/supervision/take_item_damage
execute if score .unbreaking const matches 2 unless predicate reforge:unbreaking2 run function custom_items:armor/supervision/take_item_damage
execute if score .unbreaking const matches 3 unless predicate reforge:unbreaking3 run function custom_items:armor/supervision/take_item_damage

