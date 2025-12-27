execute as @s run function custom_items:weapon/on_hold
execute store result storage forgecraft:player temp.id int 1 run scoreboard players get @s id
#execute as @s run function right_click_detection:consumable/detection with storage forgecraft:player temp
advancement revoke @s only right_click_detection:on_use