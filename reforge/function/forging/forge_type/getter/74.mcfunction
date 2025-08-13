# Defending
# > Melee
execute if score .itemtype id matches 1 run function reforge:forging/forge_type/defending_reforge_melee with storage minecraft:reforge forge
# > Ranged
execute if score .itemtype id matches 2 run function reforge:forging/forge_type/defending_reforge_other with storage minecraft:reforge forge
# > Armor
execute if score .itemtype id matches 3..6 run function reforge:forging/forge_type/defending_reforge_armor with storage minecraft:reforge forge
# > Tool & Utility
execute if score .itemtype id matches 7..8 run function reforge:forging/forge_type/defending_reforge_other with storage minecraft:reforge forge