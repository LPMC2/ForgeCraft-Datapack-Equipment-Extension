scoreboard players remove @s absorption_armor_cd 1
execute if score @s absorption_armor_cd matches ..0 run function custom_items:display/remove {tag:"absorption_reforge"}