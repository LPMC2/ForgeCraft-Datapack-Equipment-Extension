execute store result score .base_value const run attribute @p[tag=targetplayer] minecraft:attack_damage base get 10000
execute store result storage minecraft:attribute new.og_value double 0.0001 run scoreboard players get .display_value const
execute store result storage minecraft:attribute new.display_value double 0.0001 run scoreboard players operation .display_value const += .base_value const
# Trimming Useless Decimals from Display Value. For example, values like 1.200000000001 -> 1.2
data modify storage forgecraft:string target.text set string storage minecraft:attribute new.display_value
function reforge:forging/string_data/numberic/trim
data modify storage minecraft:attribute new.display_value set from storage forgecraft:string temp.numberic.result
# Trimming Useless Decimals from Og Display Value. For example, values like 1.200000000001 -> 1.2
data modify storage forgecraft:string target.text set string storage minecraft:attribute new.og_value
function reforge:forging/string_data/numberic/trim
data modify storage minecraft:attribute new.og_value set from storage forgecraft:string temp.numberic.result

function reforge:forging/display/attribute/attack_damage/set_display with storage minecraft:attribute new