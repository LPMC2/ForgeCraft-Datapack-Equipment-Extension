tag @s add leeching
tag @s add leech_target
tag @n[tag=onHit] add leeching
tag @n[tag=onHit] add leech_boost
execute store result score .health const run attribute @s minecraft:max_health get 0.5
execute if score .health const matches ..0 run scoreboard players set .health const 1
execute store result storage minecraft:health store.value int 1 run scoreboard players get .health const
execute as @s run function custom_items:weapon/leeching/apply_health_negative with storage minecraft:health store
execute as @n[tag=onHit] at @s run function custom_items:weapon/leeching/apply_health_positive with storage minecraft:health store
execute at @s run playsound minecraft:entity.witch.drink master @a ~ ~ ~ 1 0.5 0
execute at @s run playsound minecraft:entity.warden.heartbeat master @a ~ ~ ~ 1 0.5 0