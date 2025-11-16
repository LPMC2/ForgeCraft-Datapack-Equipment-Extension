execute unless entity @s[gamemode=creative] run return run tellraw @s {text:"❌ Did you really try to cheat?",color:"red"}
$tellraw @s [{text:"⚒ Received $(name).",color:"green"},{text:"\nWarning: it is only used for debugging. Please don't abuse this in survival!!!",color:"red"}]
$loot give @s loot reforge:reforge_type/$(id)