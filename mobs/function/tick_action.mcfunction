execute if score .ismobmodification const matches 1.. as @e[type=#entity_hit_matching:targets,tag=initialized] at @s run function mobs:detection
scoreboard players set .bossbar_length const 0
execute store result score .bossbar_length const run data get storage minecraft:boss bossbar
execute if score .bossbar_length const matches 1.. run function mobs:boss/detection
execute as @e[tag=boss,type=#minecraft:zombies] at @s run data modify entity @s DrownedConversionTime set value -1