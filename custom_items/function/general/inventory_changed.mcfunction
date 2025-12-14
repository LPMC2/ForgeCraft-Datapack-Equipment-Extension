execute store result storage minecraft:item store.playerid int 1 run scoreboard players get @s id
execute as @s run function custom_items:general/armor_changed_detection with storage minecraft:item store
execute as @s run function custom_items:weapon/itemslot/on_changed
schedule function custom_items:general/inventory_changed_reset 1t append