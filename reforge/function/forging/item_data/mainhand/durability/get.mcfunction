item modify entity @s weapon.mainhand custom_items:item_damage_0
execute unless data entity @s equipment.mainhand.components.minecraft:damage run return run item modify entity @s weapon.mainhand custom_items:item_damage_full
execute if data entity @s equipment.mainhand.components.minecraft:damage run data modify storage minecraft:reforge vanilla.type set value "Utilities"
execute if data entity @s equipment.mainhand.components.minecraft:damage run data modify storage minecraft:reforge vanilla.typeid set value 8
execute store result storage minecraft:reforge vanilla.durability int 1 run data get entity @s equipment.mainhand.components.minecraft:damage 2
item modify entity @s weapon.mainhand custom_items:item_damage_full