execute as @s run function custom_items:armor/get_armor_data
execute as @s run function custom_items:armor/tanky/get_data
execute store result storage forgecraft:temp player.id int 1 run scoreboard players get @s id
function custom_items:abilities/reset/data with storage forgecraft:temp player
execute unless items entity @s armor.* *[minecraft:custom_data~{forge_data:{}}] run return run function custom_items:armor/armor_load_deprecated
function custom_items:abilities/load
title @s actionbar {"text":""}