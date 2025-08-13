execute if entity @s[tag=cursed_fireball] run particle minecraft:explosion ~ ~ ~ 0 0 0 1 0
execute if entity @s[tag=cursed_fireball] run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0.5 20
execute if entity @s[tag=cursed_fireball] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 0.8 1.2 0
execute if entity @s[tag=cursed_fireball] at @s run summon creeper ~ ~ ~ {ExplosionRadius:1b,Fuse:0,ignited:1b,attributes:[{id:"minecraft:scale",base:0}]}
execute if entity @s[tag=ranger_projectile] run particle minecraft:portal ~ ~ ~ 0 0 0 0.5 50
execute if entity @s[tag=enderball] run particle minecraft:explosion ~ ~ ~ 0 0 0 1 0
