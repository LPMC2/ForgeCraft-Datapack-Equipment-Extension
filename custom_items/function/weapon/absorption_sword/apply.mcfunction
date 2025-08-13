tag @s add absorption_sw
tag @s add absorption_sw_target
tag @n[tag=onHit] add absorption_sw
tag @n[tag=onHit] add absorption_sw_boost
execute store result score .attack_damage const run attribute @s minecraft:attack_damage get
execute if score .attack_damage const matches ..0 run scoreboard players set .attack_damage const 1
execute store result storage minecraft:attack_damage store.value int 1 run scoreboard players get .attack_damage const
execute as @s run function custom_items:weapon/absorption_sword/apply_damage_negative with storage minecraft:attack_damage store
execute as @n[tag=onHit] at @s run function custom_items:weapon/absorption_sword/apply_damage_positive with storage minecraft:attack_damage store
execute at @s run playsound minecraft:entity.player.attack.knockback master @a ~ ~ ~ 1 1.5 0