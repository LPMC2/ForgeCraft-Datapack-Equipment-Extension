tag @s add drag_init
tag @s add raging_dragon
attribute @s minecraft:generic.attack_damage base set 30
attribute @s minecraft:generic.max_health base set 500
data modify entity @s Health set value 500
data modify entity @s DeathLootTable set value "mobs:raging_dragon"
data modify entity @s CustomName set value '{"color":"light_purple","italic":false,"text":"Raging Dragon"}'
scoreboard players set @s ability_action_cd1 200