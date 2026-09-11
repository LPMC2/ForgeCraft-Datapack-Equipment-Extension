# Light
# > Armor
execute if score .itemtype forgecraft.id matches 3..6 run function reforge:forging/forge_type/light_reforge_armor with storage minecraft:reforge forge
# > Ranged
execute if score .itemtype forgecraft.id matches 2 run function reforge:forging/forge_type/light_reforge_ranged with storage minecraft:reforge forge