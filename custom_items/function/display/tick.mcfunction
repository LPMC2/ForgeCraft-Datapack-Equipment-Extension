execute if score .disable_xp_actionbar const matches 1.. run return fail
execute store result storage forgecraft:display temp.player.id int 1 run scoreboard players get @s id
function custom_items:display/result/init with storage forgecraft:display temp.player