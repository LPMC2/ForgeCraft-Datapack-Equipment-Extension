tag @s add sinister
tag @s add boss
attribute @s minecraft:movement_speed modifier add sinister_speed 1.6 add_multiplied_total
attribute @s minecraft:attack_damage modifier add sinister_damage 12 add_value
attribute @s minecraft:max_health modifier add sinister_health 130 add_value
attribute @s minecraft:armor modifier add sinister_armor 10 add_value
attribute @s minecraft:spawn_reinforcements base set 0.4
attribute @s minecraft:armor_toughness modifier add sinister_armor_toughness 20 add_value
data modify entity @s Health set value 150
data modify entity @s DeathLootTable set value "mobs:sinister_loot"
data modify entity @s CustomName set value {"color":"dark_red","italic":false,"text":"Sinister Zombie"}
data modify entity @s IsBaby set value 0
execute store result score @s init_health run attribute @s minecraft:max_health get
scoreboard players set @s ability_action_cd1 300
scoreboard players set @s ability_health_remain 75
effect give @s minecraft:fire_resistance infinite 0 true
execute at @s run particle minecraft:trial_spawner_detection_ominous ~ ~0.5 ~ 0.3 0.4 0.3 0.01 40
execute at @s run playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 0.5 1.5 0
item replace entity @s armor.head with player_head[custom_name={"italic":false,"text":"Sinister\s Head"},profile={id:[I;1714939320,-2033563229,-1783716758,-378957853],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTNkMzg1MTIxMjI4MGU3Mzk2NjhkMDZhYjQ0NTM1ODFlZWVmNzlhNjNhZWZhNjA5YzJkNTgxOGI4MzJlM2RlZSJ9fX0="}]}] 1