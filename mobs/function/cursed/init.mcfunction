tag @s add cursed
tag @s add boss
tag @s add projectile_ignore
attribute @s minecraft:movement_speed modifier add cursed_speed -0.35 add_multiplied_total
attribute @s minecraft:attack_damage base set 40
attribute @s minecraft:max_health base set 200
attribute @s minecraft:armor modifier add cursed_armor 4 add_value
attribute @s minecraft:follow_range base set 100
attribute @s minecraft:scale base set 1.3
attribute @s minecraft:knockback_resistance base set 10
attribute @s minecraft:armor_toughness modifier add cursed_armor_toughness 20 add_value
data modify entity @s Health set value 200
data modify entity @s DeathLootTable set value "mobs:cursed_loot"
data modify entity @s CustomName set value {"color":"light_purple","italic":false,"text":"Cursed Skeleton"}
data modify entity @s PersistenceRequired set value 1
execute store result score @s init_health run attribute @s minecraft:max_health get
scoreboard players set @s ability_action_cd1 200
scoreboard players set @s ability_action_cd2 80
advancement grant @a[advancements={reforge:cursed_skeleton=false}] only reforge:cursed_skeleton
effect give @s minecraft:fire_resistance infinite 0 true
execute at @s run particle minecraft:trial_spawner_detection_ominous ~ ~0.5 ~ 0.4 0.5 0.4 0.01 70
execute at @s run playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 0.5 1.25 0
data merge entity @s {HandItems:[{id:"minecraft:golden_sword",count:1,components:{"minecraft:unbreakable":{}}},{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;385749423,155665254,-2009516961,-457205884],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTY4ZGNhOGUwMzc0YTI0MWU1NjA2MjlkYWI0MGI0N2QzOTYwYzYyM2ZjZTAwODc3ZjAwZWI1YjFjYWI5YWJiOCJ9fX0="}]}}}],HandDropChances:[0.000F,0.000F],ArmorItems:[{id:"minecraft:leather_boots",count:1,components:{"minecraft:unbreakable":{},"minecraft:dyed_color":14405567,"minecraft:trim":{material:"minecraft:diamond",pattern:"minecraft:silence"}}},{id:"minecraft:leather_leggings",count:1,components:{"minecraft:unbreakable":{},"minecraft:dyed_color":15129542,"minecraft:trim":{material:"minecraft:amethyst",pattern:"minecraft:tide"}}},{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:unbreakable":{},"minecraft:trim":{material:"minecraft:diamond",pattern:"minecraft:silence"}}},{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;-535237157,1476087147,-1761214431,-148423983],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZWUwNjkwMmIyNGFiMDUyODRlZDEzMmM1ZDg1MTAxMDk2NDAwMjI2MGE2NTY1MzRhYTQyMGU0YTY4ZGQzMjdiMiJ9fX0="}]}}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F]}