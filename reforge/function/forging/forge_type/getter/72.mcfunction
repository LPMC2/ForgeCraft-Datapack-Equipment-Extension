# Agile
# > Melee
execute if score .itemtype id matches 1 run function reforge:forging/forge_type/agile_reforge_melee with storage minecraft:reforge forge
# > Tool
execute if score .itemtype id matches 7 run function reforge:forging/forge_type/agile_reforge_tool with storage minecraft:reforge forge
# > Armor
execute if score .itemtype id matches 3..6 run function reforge:forging/forge_type/agile_reforge_armor with storage minecraft:reforge forge