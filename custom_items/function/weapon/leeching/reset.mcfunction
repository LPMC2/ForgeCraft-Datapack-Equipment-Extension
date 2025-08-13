attribute @s minecraft:max_health modifier remove leeched
scoreboard players set @s leeching 0
tag @s remove leeching
tag @s remove leech_boost
tag @s remove leech_target
execute at @s run playsound minecraft:block.conduit.deactivate master @a ~ ~ ~ 1 0.75 0
execute at @s run playsound minecraft:entity.warden.heartbeat master @a ~ ~ ~ 1 0.5 0