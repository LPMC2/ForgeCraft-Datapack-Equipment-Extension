#function reforge:ui/components/settings/set/init
execute store result storage minecraft:reforge temp.ui.enhancementmaxcount int 1 run scoreboard players get .enhancementmaxcount const
execute if score .ismobmodification const matches 1.. run data modify storage minecraft:reforge temp.ui.ismobmodification set value "true"
execute unless score .ismobmodification const matches 1.. run data modify storage minecraft:reforge temp.ui.ismobmodification set value "false"
execute if score .isrequireconvert const matches 1.. run data modify storage minecraft:reforge temp.ui.isrequireconvert set value "true"
execute unless score .isrequireconvert const matches 1.. run data modify storage minecraft:reforge temp.ui.isrequireconvert set value "false"
execute if score .istexturearmor const matches 1.. run data modify storage minecraft:reforge temp.ui.istexturearmor set value "true"
execute unless score .istexturearmor const matches 1.. run data modify storage minecraft:reforge temp.ui.istexturearmor set value "false"
execute if score .istextureequipment const matches 1.. run data modify storage minecraft:reforge temp.ui.istextureequipment set value "true"
execute unless score .istextureequipment const matches 1.. run data modify storage minecraft:reforge temp.ui.istextureequipment set value "false"
execute store result storage minecraft:reforge temp.ui.forgingxpmultiplier int 1 run scoreboard players get .forgingxpmultiplier const

function reforge:ui/menus/getter/settings/base with storage minecraft:reforge temp.ui