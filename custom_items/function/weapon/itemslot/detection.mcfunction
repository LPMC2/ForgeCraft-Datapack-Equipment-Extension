# Custom Item Slot Detection
execute unless score @s last.slot matches 0.. run scoreboard players set @s last.slot 0
execute store result score @s sel.slot run data get entity @s SelectedItemSlot
execute if score @s last.slot matches 0.. unless score @s sel.slot = @s last.slot run function custom_items:weapon/itemslot/on_changed
#execute unless data entity @s SelectedItem.components.minecraft:custom_data.global_id run scoreboard players set @s itemid -1
#execute unless score @s itemid_stored = @s itemid run function custom_items:weapon/itemslot/on_changed

execute store result storage minecraft:item store.pid int 1 run scoreboard players get @s id
execute as @s run function custom_items:weapon/itemslot/item_use_detection with storage minecraft:item store