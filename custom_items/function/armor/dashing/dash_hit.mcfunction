scoreboard players set .2 const 2
scoreboard players operation .damage dashing_amount = @p[tag=dashing] dashing_amount
scoreboard players operation .max_dashing_amount const = @p[tag=dashing] max_dash_amount

scoreboard players set .large_number const 100000

scoreboard players operation .damage dashing_amount *= .large_number const

scoreboard players operation .scale_factor const = @p[tag=dashing] dashing_count
scoreboard players operation .scale_factor const *= .2 const
scoreboard players operation .damage dashing_amount *= .scale_factor const

scoreboard players operation .damage dashing_amount /= .max_dashing_amount const


scoreboard players operation .damage dashing_amount /= .large_number const

execute store result storage minecraft:damage store.value int 1 run scoreboard players get .damage dashing_amount
execute as @s run function custom_items:armor/dashing/apply_damage with storage minecraft:damage store
execute as @s run function custom_items:weapon/stunning/apply
execute as @p[tag=dashing] at @s run function custom_items:weapon/stunning/apply