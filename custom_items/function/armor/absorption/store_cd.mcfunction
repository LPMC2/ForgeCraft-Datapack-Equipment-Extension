#scoreboard players operation @s absorption_armor_cd = .effect_duration const
scoreboard players set @s absorption_armor_cd 15
scoreboard players operation @s absorption_armor_cd *= .tick const
execute at @s run playsound minecraft:entity.zombie_villager.cure player @a ~ ~ ~ 0.5 2 0
execute at @s run particle dust_color_transition{from_color:[1.000,0.867,0.000],scale:2,to_color:[1.000,0.600,0.000]} ~ ~ ~ 0.3 0.5 0.3 1 10 normal