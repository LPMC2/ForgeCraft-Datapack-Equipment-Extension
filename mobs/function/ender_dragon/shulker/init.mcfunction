tag @s add drag_init
tag @s add shulker_dragon
attribute @s minecraft:generic.attack_damage base set 5
attribute @s minecraft:generic.max_health base set 1000
data modify entity @s Health set value 1000
attribute @s minecraft:generic.armor modifier add shulker_armor 20 add_value
attribute @s minecraft:generic.armor_toughness modifier add shulker_armor_toughness 20 add_value
data modify entity @s DeathLootTable set value "mobs:shulker_dragon"
data modify entity @s CustomName set value '{"color":"light_purple","italic":false,"text":"Shulker Dragon"}'
scoreboard players set @s ability_action_cd1 100