scoreboard objectives add forgecraft_lvl dummy
scoreboard objectives add forgecraft_lvl_progress dummy
scoreboard objectives add forgecraft_lvl_objective dummy
scoreboard objectives add forgecraft_lvl_xp_boost dummy
scoreboard objectives add forgecraft_lvl_stat_boost dummy
execute as @a unless score @s forgecraft_lvl matches 0.. run scoreboard players set @s forgecraft_lvl 0
execute as @a unless score @s forgecraft_lvl_progress matches 0.. run scoreboard players set @s forgecraft_lvl_progress 0
execute as @a unless score @s forgecraft_lvl_objective matches 0.. run scoreboard players set @s forgecraft_lvl_objective 100
execute as @a unless score @s forgecraft_lvl_xp_boost matches 0.. run scoreboard players set @s forgecraft_lvl_xp_boost 0
execute as @a unless score @s forgecraft_lvl_stat_boost matches 0.. run scoreboard players set @s forgecraft_lvl_stat_boost 0