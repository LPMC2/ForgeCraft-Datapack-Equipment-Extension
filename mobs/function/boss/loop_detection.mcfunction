scoreboard players set .isexist const 0
scoreboard players set .boss_id const 0
$execute store result score .boss_id const run data get storage minecraft:boss bossbar[$(index)].id
# Debug: tellraw @p [{"text":"ID: "},{"score":{"name":".boss_id","objective":"const"}}]
$execute store result storage minecraft:boss store.id int 1 run data get storage minecraft:boss bossbar[$(index)].id
execute as @e[tag=boss] at @s if score @s id = .boss_id const run scoreboard players add .isexist const 1
execute if score .isexist const matches 0 run function mobs:boss/remove_bossbar with storage minecraft:boss store
scoreboard players add .bossbar_index const 1
# Debug: $tellraw @p [{"text":"Index($(index)): "},{"score":{"name":".bossbar_index","objective":"const"}}]
execute store result storage minecraft:boss store.index int 1 run scoreboard players get .bossbar_index const
execute if score .bossbar_index const < .bossbar_length const run function mobs:boss/loop_detection with storage minecraft:boss store