execute if data entity @s weapon.components.minecraft:custom_data.magical if data entity @s item.components.minecraft:potion_contents.potion run function custom_items:arrow/magical/action
execute if data entity @s weapon.components.minecraft:custom_data.poison_bow run function custom_items:arrow/poison/apply

tag @s add onground
execute as @s[tag=!arrow_ignore] run execute store result storage minecraft:arrow store.id int 1 run scoreboard players get @s id
execute as @s[tag=!arrow_ignore] run function custom_items:arrow/remove_storage with storage minecraft:arrow store