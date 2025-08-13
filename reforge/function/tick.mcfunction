#Forge Anvil Setup
execute as @e[type=marker,tag=forge_base] at @s unless block ~ ~ ~ minecraft:anvil unless block ~ ~ ~ minecraft:chipped_anvil unless block ~ ~ ~ minecraft:damaged_anvil run function reforge:anvil_remove
execute as @e[type=block_display,tag=reforge_anvil] at @s if entity @s[tag=init] align xyz positioned ~0.5 ~ ~0.5 run function reforge:setup

#Forge Anvil Item Detection
execute as @e[type=interaction,tag=inputitem] at @s run function reforge:detection_slot
execute at @p as @e[type=item_display,tag=target_forge_display_item,distance=..10] at @s run tp @s ~ ~ ~ ~2 ~
#Forge Anvil Forge Detection
execute as @e[type=interaction,tag=forge_detection] at @s run function reforge:detection_anvil