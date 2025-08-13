#$execute if data storage minecraft:reforge temp.display.lore.forge[0] unless data storage minecraft:reforge temp.display.lore.forge[1] run data modify entity @s Item.components.minecraft:lore set value [$(forge),$(base),$(type)]
execute if data storage minecraft:reforge temp.display.lore.forge run data modify entity @s Item.components.minecraft:lore set value []
execute if data storage minecraft:reforge temp.display.lore.forge[0] run data modify entity @s Item.components.minecraft:lore append from storage minecraft:reforge temp.display.lore.forge[0]
execute if data storage minecraft:reforge temp.display.lore.forge[1] run data modify entity @s Item.components.minecraft:lore append from storage minecraft:reforge temp.display.lore.forge[1]
execute if data storage minecraft:reforge temp.display.lore.forge[2] run data modify entity @s Item.components.minecraft:lore append from storage minecraft:reforge temp.display.lore.forge[2]
execute if data storage minecraft:reforge temp.display.lore.forge[3] run data modify entity @s Item.components.minecraft:lore append from storage minecraft:reforge temp.display.lore.forge[3]
execute if data storage minecraft:reforge temp.display.lore.forge[4] run data modify entity @s Item.components.minecraft:lore append from storage minecraft:reforge temp.display.lore.forge[4]
execute if data storage minecraft:reforge temp.display.lore.forge[5] run data modify entity @s Item.components.minecraft:lore append from storage minecraft:reforge temp.display.lore.forge[5]
execute if data storage minecraft:reforge temp.display.lore.forge[6] run data modify entity @s Item.components.minecraft:lore append from storage minecraft:reforge temp.display.lore.forge[6]
#data modify entity @s Item.components.minecraft:lore append from storage minecraft:reforge temp.display.lore.base
execute as @s run function reforge:forging/display/item/lore/base
data modify entity @s Item.components.minecraft:lore append from storage minecraft:reforge temp.display.lore.type