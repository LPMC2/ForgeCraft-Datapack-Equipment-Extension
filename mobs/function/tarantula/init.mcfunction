tag @s add tarantula
tag @s add effects
attribute @s minecraft:max_health base set 32
attribute @s minecraft:attack_damage base set 8
attribute @s minecraft:scale base set 0.75
attribute @s minecraft:movement_speed modifier add tarantula 1 add_multiplied_total
attribute @s minecraft:jump_strength modifier add tarantula_jump 1.5 add_multiplied_total
attribute @s minecraft:safe_fall_distance modifier add tarantula_fall 1.5 add_multiplied_total
data modify entity @s CustomName set value {"color":"red","italic":false,"text":"Tarantula"}
data modify entity @s Health set value 32
data modify entity @s DeathLootTable set value "mobs:tarantula_loot"
advancement grant @a[advancements={reforge:tarantula=false}] only reforge:tarantula
execute at @s run particle entity_effect{color:[0.514,0.690,0.471,1.00]} ~ ~ ~ 0 0 0 1 30 normal
execute at @s run playsound minecraft:entity.spider.ambient master @a ~ ~ ~ 1 0.75 0