tag @s add onHurt_target

execute as @a[tag=onHurt] as @s run function custom_items:armor/on_hurt
execute as @a[tag=onHurt] as @s run function mobs:on_hurt
tag @s remove onHurt
tag @s remove onHurt_target