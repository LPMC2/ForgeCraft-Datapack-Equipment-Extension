attribute @s minecraft:attack_damage modifier remove absorpiton_sw
scoreboard players set @s absorption_sword_cd 0
tag @s remove absorption_sw
tag @s remove absorption_sw_boost
tag @s remove absorption_sw_target
execute at @s run playsound minecraft:entity.player.attack.knockback master @a ~ ~ ~ 1 0.5 0