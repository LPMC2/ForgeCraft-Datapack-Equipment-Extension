execute unless entity @s[gamemode=creative] run return run tellraw @s {text:"❌ Did you really try to cheat?",color:"red"}
data modify storage minecraft:reforge temp.ui.reforge_text set value []
function reforge:ui/components/reforge_items/set/init
function reforge:ui/menus/getter/base with storage minecraft:reforge temp.ui