execute store result score .base_value const run attribute @p[tag=targetplayer] minecraft:attack_speed base get 10000
scoreboard players operation .cal_value const = .10000 const
scoreboard players operation .cal_value const += .display_value const
execute store result storage minecraft:attribute new.og_value double 0.01 run scoreboard players get .display_value const
execute store result storage minecraft:attribute new.display_value double 0.00000001 run scoreboard players operation .base_value const *= .cal_value const
function reforge:forging/display/attribute/attack_speed/set_display with storage minecraft:attribute new