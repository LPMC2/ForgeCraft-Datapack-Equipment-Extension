execute if data storage minecraft:reforge vanilla{typeid:1} run return fail
enchant @s minecraft:efficiency 5
execute if data entity @s equipment.mainhand.components.minecraft:enchantments.minecraft:efficiency run data modify storage minecraft:reforge vanilla.type set value "Tool"
execute if data entity @s equipment.mainhand.components.minecraft:enchantments.minecraft:efficiency run data modify storage minecraft:reforge vanilla.typeid set value 7
#execute if data entity @s equipment.mainhand.components.minecraft:enchantments.minecraft:efficiency run function reforge:forging/item_data/mainhand/tool/attribute with storage minecraft:reforge vanilla