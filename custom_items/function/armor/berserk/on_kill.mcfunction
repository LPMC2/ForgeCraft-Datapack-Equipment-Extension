scoreboard players add @s berserk_armor_kill_count 1
scoreboard players set @s berserk_armor_cd 100
scoreboard players set .berserk_armor_kill_cap const 3
scoreboard players operation .berserk_armor_kill_cap const *= @s berserk_armor_count
execute if score @s berserk_armor_kill_count > .berserk_armor_kill_cap const run return fail
execute store result storage minecraft:armor store.value int 1 run scoreboard players get @s berserk_armor_kill_count
execute as @s run function custom_items:armor/berserk/apply with storage minecraft:armor store
