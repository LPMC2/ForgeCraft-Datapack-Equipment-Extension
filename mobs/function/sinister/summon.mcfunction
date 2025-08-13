execute as @s run function mobs:sinister/summon_vampire
scoreboard players remove .vampire_count const 1
execute as @s if score .vampire_count const matches 1.. run function mobs:sinister/summon