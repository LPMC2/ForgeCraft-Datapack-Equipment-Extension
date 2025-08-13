#$execute unless score .isnotlisted const matches 1.. run data modify entity @s text set value [$(name),"\n",$(description),"\n",$(attributes)]
data modify entity @s text set from storage minecraft:reforge temp.display.name
data modify entity @s text.extra append value "\n"
execute if data storage minecraft:reforge temp.display.description[0] run data modify entity @s text.extra append from storage minecraft:reforge temp.display.description[0]
execute if data storage minecraft:reforge temp.display.description[1] run data modify entity @s text.extra append value "\n"
execute if data storage minecraft:reforge temp.display.description[1] run data modify entity @s text.extra append from storage minecraft:reforge temp.display.description[1]
execute if data storage minecraft:reforge temp.display.description[2] run data modify entity @s text.extra append value "\n"
execute if data storage minecraft:reforge temp.display.description[2] run data modify entity @s text.extra append from storage minecraft:reforge temp.display.description[2]
execute if data storage minecraft:reforge temp.display.description[3] run data modify entity @s text.extra append value "\n"
execute if data storage minecraft:reforge temp.display.description[3] run data modify entity @s text.extra append from storage minecraft:reforge temp.display.description[3]
execute if data storage minecraft:reforge temp.display.description[4] run data modify entity @s text.extra append value "\n"
execute if data storage minecraft:reforge temp.display.description[4] run data modify entity @s text.extra append from storage minecraft:reforge temp.display.description[4]
execute if data storage minecraft:reforge temp.display.description[5] run data modify entity @s text.extra append value "\n"
execute if data storage minecraft:reforge temp.display.description[5] run data modify entity @s text.extra append from storage minecraft:reforge temp.display.description[5]
execute if data storage minecraft:reforge temp.display.description[6] run data modify entity @s text.extra append value "\n"
execute if data storage minecraft:reforge temp.display.description[6] run data modify entity @s text.extra append from storage minecraft:reforge temp.display.description[6]
data modify entity @s text.extra append value "\n"
execute unless score .isnotlisted const matches 1.. run data modify entity @s text.extra append from storage minecraft:reforge temp.display.attributes
execute if score .isnotlisted const matches 1.. run data modify entity @s text.extra append value {"bold":false,"color":"#BDBFFF","italic":false,"text":"\nWhen equipped:\n???"}
#$execute if score .isnotlisted const matches 1.. run data modify entity @s text set value [$(name),"\n",$(description), "\n",{"bold":false,"color":"#BDBFFF","italic":false,"text":"\nWhen equipped:\n???"}]