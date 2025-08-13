$execute as @s if score @s item_use_$(pid) matches 1.. run function custom_items:weapon/itemslot/on_use
$execute if score @s item_use_$(pid) matches 1.. run scoreboard players set @s item_use_$(pid) 0