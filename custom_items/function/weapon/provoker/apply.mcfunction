tag @s add ignore
scoreboard players operation .damage_taken const = @s init_health

scoreboard players operation .damage_taken const -= @s health
scoreboard players add .damage_taken const 1
execute store result storage minecraft:damage store.damage int 1 run scoreboard players get .damage_taken const
execute as @s run function custom_items:weapon/provoker/apply_damage with storage minecraft:damage store
execute at @s run particle entity_effect{color:[0.765,0.000,1.000,1.00]} ~ ~0.5 ~ 0.5 0.75 0.5 1 30 normal
execute at @s run playsound minecraft:ambient.cave master @a ~ ~ ~ 0.5 2 0
execute if entity @p[tag=onHit,advancements={reforge:aggro_reforge=false}] run advancement grant @p[tag=onHit] only reforge:aggro_reforge
tag @s remove ignore
