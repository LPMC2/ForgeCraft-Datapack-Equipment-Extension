execute as @s run function custom_items:armor/armor_modified
tag @s remove striking
execute as @s run function game:player/on_death
scoreboard players set @s death_count 0