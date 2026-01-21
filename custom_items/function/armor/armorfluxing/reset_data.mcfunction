scoreboard players reset @s armorfluxing_reforge_count
execute if score @s armorfluxing_reforge_cd matches 1.. run return fail
scoreboard players reset @s armorfluxing_reforge_cd
function custom_items:display/remove {tag:"armorfluxing_reforge"}