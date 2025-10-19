execute store result score .base_value const run attribute @p[tag=targetplayer] minecraft:attack_damage base get 10000
execute store result storage minecraft:attribute new.og_value double 0.0001 run scoreboard players get .display_value const
execute store result storage minecraft:attribute new.display_value double 0.0001 run scoreboard players operation .display_value const += .base_value const
function reforge:forging/display/attribute/attack_damage/set_display with storage minecraft:attribute new