tag @s add breezy_reforge
scoreboard players set @s breezy_reforge_cd 100
execute if predicate custom_items:sneak at @s run return run function custom_items:weapon/breezy/cast/sneak
function custom_items:weapon/breezy/cast/basic