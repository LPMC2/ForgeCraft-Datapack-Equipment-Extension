tag @s add superior_guardian
tag @s add effects
tag @s add boss
attribute @s minecraft:max_health base set 300
attribute @s minecraft:armor modifier add guardian_armor 12 add_value
attribute @s minecraft:follow_range base set 100
attribute @s minecraft:scale base set 1.2
attribute @s minecraft:armor_toughness modifier add guardian_armor_toughness 10 add_value
data modify entity @s Health set value 300
data modify entity @s DeathLootTable set value "mobs:superior_guardian_loot"
data modify entity @s CustomName set value {"color":"light_purple","italic":false,"text":"Superior Guardian"}
data modify entity @s PersistenceRequired set value 1
execute store result score @s init_health run attribute @s minecraft:max_health get
scoreboard players set @s ability_action_cd1 300
scoreboard players set @s ability_action_cd2 100
scoreboard players set @s ability_health_remain 200
execute at @s run particle minecraft:trial_spawner_detection_ominous ~ ~0.5 ~ 0.4 0.5 0.4 0.01 70
execute at @s run playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 0.5 1.25 0
