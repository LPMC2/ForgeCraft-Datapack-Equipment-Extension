scoreboard players set @s ability_cd2 0
execute if entity @s[tag=cursed] run function mobs:cursed/fire
execute if entity @s[tag=superior_guardian] run function mobs:superior_guardian/damage