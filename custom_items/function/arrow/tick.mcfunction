# Arrow Init functions
execute as @s[tag=!initialized,tag=!onground] run function custom_items:arrow/init

# Custom Items functions
execute as @s[tag=initialized] at @s if data entity @s weapon.components.minecraft:custom_data.magical run function custom_items:arrow/magical/tick
execute as @s[tag=initialized] at @s if data entity @s weapon.components.minecraft:custom_data.poison_bow run function custom_items:arrow/poison/tick
execute as @s[tag=initialized] at @s if data entity @s weapon.components.minecraft:custom_data.poisoned_ranged run function custom_items:arrow/poisoned/tick
execute as @s[tag=initialized,tag=!onground,nbt={crit:1b}] if data entity @s weapon.components.minecraft:custom_data.sniping run function custom_items:arrow/sniping/tick

# Arrow auto remove feature
scoreboard players add .arrow_tick const 1
execute if score .arrow_tick const matches 600.. run function custom_items:arrow/remove_unused

# Arrow hit functions

execute as @s[tag=initialized,tag=!onground] if entity @s[nbt={inGround:1b}] run function custom_items:arrow/onhit/action