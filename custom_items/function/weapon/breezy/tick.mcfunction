scoreboard players remove @s breezy_reforge_cd 1
execute if score @s breezy_reforge_cd matches ..0 run tag @s remove breezy_reforge
execute if score @s breezy_reforge_cd matches ..0 run function custom_items:display/remove {tag:"breezy_reforge"}
