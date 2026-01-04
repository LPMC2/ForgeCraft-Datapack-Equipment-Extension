scoreboard players remove @s[scores={use=1..}] use 1
execute as @s[tag=raging_melee] run function custom_items:weapon/raging/melee/tick
execute as @s[tag=raging_tool] run function custom_items:weapon/raging/tool/tick
execute as @s[tag=rampaging] run function custom_items:weapon/rampaging/tick
execute as @s[tag=electric_reforge] run function custom_items:weapon/electric/tick
execute as @s[tag=breezy_reforge] run function custom_items:weapon/breezy/tick
#execute as @a[tag=heartstoner] run function custom_items:weapon/heartstoner/tick
execute at @s if score @s rapid_count matches 1.. run function custom_items:arrow/rapid/tick
execute at @s run function custom_items:weapon/itemslot/detection