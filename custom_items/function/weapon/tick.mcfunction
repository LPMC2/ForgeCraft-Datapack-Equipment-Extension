execute as @e[type=!#entity_hit_matching:non_mob,tag=stunning] run function custom_items:weapon/stunning/tick
execute as @e[type=!#entity_hit_matching:non_mob,tag=breaching] run function custom_items:weapon/breaching/tick
execute as @e[type=!#entity_hit_matching:non_mob,tag=leeching] run function custom_items:weapon/leeching/tick
#execute if entity @e[type=!#entity_hit_matching:non_mob,tag=absorption_sw] run function custom_items:weapon/absorption_sword/tick
execute as @a[tag=raging_melee] run function custom_items:weapon/raging/melee/tick
execute as @a[tag=raging_tool] run function custom_items:weapon/raging/tool/tick
execute as @a[tag=rampaging] run function custom_items:weapon/rampaging/tick
#execute as @a[tag=heartstoner] run function custom_items:weapon/heartstoner/tick
execute as @a at @s if score @s rapid_count matches 1.. run function custom_items:arrow/rapid/tick
execute as @a at @s run function custom_items:weapon/itemslot/detection
