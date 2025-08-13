enchant @s minecraft:power 5
enchant @s minecraft:quick_charge 3
execute if data entity @s equipment.mainhand.components.minecraft:enchantments.minecraft:power run data modify storage minecraft:reforge vanilla.type set value "Ranged"
execute if data entity @s equipment.mainhand.components.minecraft:enchantments.minecraft:power run data modify storage minecraft:reforge vanilla.typeid set value 2
execute if data entity @s equipment.mainhand.components.minecraft:enchantments.minecraft:quick_charge run data modify storage minecraft:reforge vanilla.type set value "Ranged"
execute if data entity @s equipment.mainhand.components.minecraft:enchantments.minecraft:quick_charge run data modify storage minecraft:reforge vanilla.typeid set value 2
execute if data entity @s equipment.mainhand.components.minecraft:enchantments.minecraft:power run function reforge:forging/item_data/mainhand/ranged/attribute with storage minecraft:reforge vanilla
execute if data entity @s equipment.mainhand.components.minecraft:enchantments.minecraft:quick_charge run function reforge:forging/item_data/mainhand/ranged/attribute with storage minecraft:reforge vanilla