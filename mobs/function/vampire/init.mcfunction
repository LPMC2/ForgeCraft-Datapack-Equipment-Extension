tag @s add vampire
tag @s add effects
scoreboard players set .isSinister const 0
execute if predicate reforge:1_percentage if entity @s[tag=!unconvertable] run scoreboard players set .isSinister const 1
execute as @s if score .isSinister const matches 1.. run function mobs:sinister/init
execute if score .isSinister const matches 1.. run return fail
attribute @s minecraft:movement_speed modifier add vampire_speed 1.35 add_multiplied_total
attribute @s minecraft:attack_damage modifier add vampire_damage 5 add_value
attribute @s minecraft:max_health modifier add vampire_health 10 add_value
attribute @s minecraft:armor modifier add sinister_armor 10 add_value
data modify entity @s Health set value 30
data modify entity @s DeathLootTable set value "mobs:vampire_loot"
data modify entity @s CustomName set value {"color":"red","italic":false,"text":"Vampire Zombie"}
execute at @s run particle minecraft:trial_spawner_detection ~ ~0.5 ~ 0.3 0.4 0.3 0.01 40
execute at @s run playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 0.15 2 0
advancement grant @a[advancements={reforge:vampire=false}] only reforge:vampire
item replace entity @s armor.head with player_head[custom_name={"italic":false,"text":"Vampire\s Head"},profile={id:[I;1661659996,-1796389195,-1499893873,852265311],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWIwYzJkYjQyZTkwZjgzZmFlNjU1MWM5NmU4MzY2OTIxMWE3N2MyYzE1NWM1NGQxNTIzYWYzMDc5Zjk1NjVlZCJ9fX0="}]}] 1