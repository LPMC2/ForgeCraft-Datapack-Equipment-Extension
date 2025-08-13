execute if entity @e[type=#entity_hit_matching:targets_including_player,tag=stunning] run function custom_items:weapon/stunning/tick
execute if entity @e[type=#entity_hit_matching:targets_including_player,tag=breaching] run function custom_items:weapon/breaching/tick
execute if entity @e[type=#entity_hit_matching:targets_including_player,tag=leeching] run function custom_items:weapon/leeching/tick
execute if entity @e[type=#entity_hit_matching:targets_including_player,tag=absorption_sw] run function custom_items:weapon/absorption_sword/tick
execute if entity @e[type=#entity_hit_matching:targets_including_player,tag=raging_melee] run function custom_items:weapon/raging/melee/tick
execute if entity @e[type=#entity_hit_matching:targets_including_player,tag=raging_tool] run function custom_items:weapon/raging/tool/tick
execute as @a[tag=rampaging] run function custom_items:weapon/rampaging/tick
#execute as @a[tag=heartstoner] run function custom_items:weapon/heartstoner/tick
execute as @a at @s if score @s rapid_count matches 1.. run function custom_items:arrow/rapid/tick
execute as @a at @s run function custom_items:weapon/itemslot/detection
