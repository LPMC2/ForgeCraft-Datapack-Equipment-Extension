attribute @s minecraft:movement_speed modifier remove dashing
scoreboard players set @s dashing_amount 0
scoreboard players set @s sprint_cd 0
scoreboard players set .current_dashing_amount const 0
function custom_items:display/bar/update {tag:"dashing_reforge"}