# Forge Anvil Setup & Remove
execute as @e[type=marker,tag=forge_base] at @s unless block ~ ~ ~ minecraft:anvil unless block ~ ~ ~ minecraft:chipped_anvil unless block ~ ~ ~ minecraft:damaged_anvil run function reforge:anvil_remove
execute as @e[type=block_display,tag=reforge_anvil] at @s if entity @s[tag=init] align xyz positioned ~0.5 ~ ~0.5 run function reforge:setup
# Detection and tick
execute if score .disable_xp_actionbar const matches 1.. run scoreboard players remove .disable_xp_actionbar const 1
execute as @e[type=marker,tag=reforge_crafter] at @s if entity @s[tag=init] align xyz positioned ~0.5 ~ ~0.5 run function reforge:procedure_generated/crafter/setup

# Forge Anvil Item Display
execute at @p as @e[type=item_display,tag=target_forge_display_item,distance=..10] at @s run tp @s ~ ~ ~ ~2 ~