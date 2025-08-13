scoreboard players set @s raging_melee 0
scoreboard players add @s rage_meter_melee 1
tag @s add raging_melee
scoreboard players set .10 const 10
scoreboard players set .100 const 100
scoreboard players set .rage rage_meter_melee 0
scoreboard players set .rage_digit rage_meter_melee 0
scoreboard players operation .rage rage_meter_melee = @s rage_meter_melee
scoreboard players operation .rage rage_meter_melee *= .10 const
function custom_items:weapon/raging/melee/add_digit

execute store result storage minecraft:attribute store.value_demical int 1 run scoreboard players get .rage rage_meter_melee
execute store result storage minecraft:attribute store.value_digit int 1 run scoreboard players get .rage_digit rage_meter_melee

execute as @s run function custom_items:weapon/raging/melee/add_attribute with storage minecraft:attribute store