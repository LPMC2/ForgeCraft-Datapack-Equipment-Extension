scoreboard players set .anvil_loaded const 0
execute unless score @s reforgeId matches 1.. unless data entity @s data.reforge_id run return run kill @s
function reforge:reforge_anvil/load/set with entity @s data