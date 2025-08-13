tag @s add ranger_enderman

attribute @s minecraft:movement_speed modifier add ranger_speed -0.4 add_multiplied_total
attribute @s minecraft:follow_range base set 100

#data modify entity @s Health set value 200
data modify entity @s DeathLootTable set value "mobs:ranger_enderman_loot"

execute store result score @s init_health run attribute @s minecraft:max_health get
tag @s add paused
scoreboard players set @s ability_action_cd1 20
execute at @s run particle minecraft:portal ~ ~0.5 ~ 0.4 0.5 0.4 0.01 70
execute at @s run playsound minecraft:entity.enderman.ambient master @a ~ ~ ~ 1 1.2 0