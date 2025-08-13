tag @s add charged_creeper
attribute @s minecraft:max_health base set 40
attribute @s minecraft:scale base set 1.1
attribute @s minecraft:movement_speed modifier add charged_creeper_speed 0.25 add_multiplied_total
data modify entity @s Health set value 40
data modify entity @s DeathLootTable set value "mobs:charged_creeper_loot"
data modify entity @s Fuse set value 20s
advancement grant @a[advancements={reforge:charged_creeper=false}] only reforge:charged_creeper
execute at @s run summon lightning_bolt ~ ~ ~
effect give @s minecraft:resistance 5 5 false
effect give @s minecraft:fire_resistance 20 0 false