execute at @s[type=minecraft:zombie,tag=!vampire] if dimension minecraft:the_nether run function mobs:vampire/init
execute at @s[type=minecraft:husk,tag=!vampire] if dimension minecraft:the_nether run function mobs:vampire/init
execute at @s[type=minecraft:drowned,tag=!vampire] if dimension minecraft:the_nether run function mobs:vampire/init
execute at @s[type=#minecraft:skeletons,tag=!cursed] if block ~ ~1 ~ minecraft:soul_fire if block ~ ~ ~ minecraft:soul_sand run function mobs:cursed/init
execute at @s[type=minecraft:spider,tag=!tarantula] if data entity @s active_effects[{id:"minecraft:weaving"}] run function mobs:tarantula/init
execute at @s[type=minecraft:creeper,tag=!charged_creeper] if block ~ ~-1 ~ minecraft:lightning_rod run function mobs:charged_creeper/init