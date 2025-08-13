tag @s add drag_init
tag @s add dasher_dragon
attribute @s minecraft:generic.attack_damage base set 15
attribute @s minecraft:generic.max_health base set 250
data modify entity @s Health set value 250
data modify entity @s DeathLootTable set value "mobs:dasher_dragon"
data modify entity @s CustomName set value '{"color":"light_purple","italic":false,"text":"Dasher Dragon"}'