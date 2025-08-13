tag @s add drag_init
tag @s add electric_dragon
attribute @s minecraft:generic.attack_damage base set 8
attribute @s minecraft:generic.max_health base set 400
data modify entity @s Health set value 400
data modify entity @s DeathLootTable set value "mobs:electric_dragon"
data modify entity @s CustomName set value '{"color":"light_purple","italic":false,"text":"Electric Dragon"}'
scoreboard players set @s ability_action_cd1 400
scoreboard players set @s ability_action_cd2 200