#$execute unless score .isnotlisted const matches 1.. run data modify entity @s text set value [$(name),"\n",$(description),"\n",$(attributes)]
data modify entity @s text set from storage minecraft:reforge temp.display.name
execute unless data storage minecraft:reforge temp.display.name{} run data modify entity @s text set value {text:"",color:"white"}
execute unless data storage minecraft:reforge temp.display.name{} run data modify entity @s text.text set from storage minecraft:reforge temp.display.name
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
execute if data storage minecraft:reforge temp.display.description[7] run data modify entity @s text.extra append value "\n"
execute if data storage minecraft:reforge temp.display.description[7] run data modify entity @s text.extra append from storage minecraft:reforge temp.display.description[7]
data modify entity @s text.extra append value "\n"
execute unless score .isnotlisted const matches 1.. run data modify entity @s text.extra append from storage minecraft:reforge temp.display.attributes
execute if score .isnotlisted const matches 1.. run data modify entity @s text.extra append value {"bold":false,"color":"#BDBFFF","italic":false,"text":"\nWhen equipped:\n???                          "}
execute if score .isnotlisted const matches 1.. run data modify entity @s text.extra append value {"bold":false,"color":"#ff0d0d","italic":false,"text":"\n\nWarning: ALL Attributes will be Replaced and Randomized!"}
data modify entity @s line_width set value 200
#$execute if score .isnotlisted const matches 1.. run data modify entity @s text set value [$(name),"\n",$(description), "\n",{"bold":false,"color":"#BDBFFF","italic":false,"text":"\nWhen equipped:\n???"}]