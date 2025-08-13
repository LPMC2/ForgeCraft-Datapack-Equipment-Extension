# Debug: $say scoreboard objectives add item_use_$(playerid) minecraft.used:minecraft.$(itemid)
$scoreboard objectives remove item_use_$(playerid)
$scoreboard objectives add item_use_$(playerid) minecraft.used:$(itemid)
