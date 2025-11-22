execute store result score .base_value const run attribute @p[tag=targetplayer] minecraft:attack_speed base get
scoreboard players operation .cal_value const = .10000 const
scoreboard players operation .cal_value const += .display_value const
scoreboard players set .og_value const 0
execute store result storage minecraft:attribute new.og_value double 0.01 store result score .og_value const run scoreboard players get .display_value const
execute store result storage minecraft:attribute new.display_value double 0.0001 run scoreboard players operation .base_value const *= .cal_value const

# Trimming Useless Decimals from Display Value. For example, values like 1.200000000001 -> 1.2
data modify storage forgecraft:string target.text set string storage minecraft:attribute new.display_value
function reforge:forging/string_data/numberic/trim
data modify storage minecraft:attribute new.display_value set from storage forgecraft:string temp.numberic.result
# Trimming Useless Decimals from Og Display Value. For example, values like 1.200000000001 -> 1.2
data modify storage forgecraft:string target.text set string storage minecraft:attribute new.og_value
function reforge:forging/string_data/numberic/trim
data modify storage minecraft:attribute new.og_value set from storage forgecraft:string temp.numberic.result

function reforge:forging/display/attribute/attack_speed/set_display with storage minecraft:attribute new