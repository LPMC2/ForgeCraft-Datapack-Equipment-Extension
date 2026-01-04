tag @s add breezy_reforge_temp
summon wind_charge ~ ~ ~ {Tags:["breezy_reforge_ball","breezy_init"]}
execute as @n[type=wind_charge,tag=breezy_init] rotated as @p[tag=breezy_reforge_temp] run tp @s ^ ^ ^ ~ ~
execute as @n[type=wind_charge,tag=breezy_init] run function custom_items:weapon/breezy/cast/launch
tag @e[type=wind_charge] remove breezy_init
tag @s remove breezy_reforge_temp