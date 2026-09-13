$execute unless data storage minecraft:reforge data.reforge_data[{id:$(forge_id)}].types[{id:$(item_type_id)}] run return fail
# Rarity
data modify storage minecraft:reforge forge.rarity_color set value "white"
$execute if data storage minecraft:reforge data.reforge_data[{id:$(forge_id),rarity:'uncommon'}] run data modify storage minecraft:reforge forge.rarity_color set value "#DEDEDE"
$execute if data storage minecraft:reforge data.reforge_data[{id:$(forge_id),rarity:'rare'}] run data modify storage minecraft:reforge forge.rarity_color set value "aqua"
$execute if data storage minecraft:reforge data.reforge_data[{id:$(forge_id),rarity:'epic'}] run data modify storage minecraft:reforge forge.rarity_color set value "light_purple"

# Reforge data
$data modify storage minecraft:reforge forge.reforge set from storage minecraft:reforge data.reforge_data[{id:$(forge_id)}].name
$data modify storage minecraft:reforge forge.description set from storage minecraft:reforge data.reforge_data[{id:$(forge_id)}].description
$data modify storage minecraft:reforge forge.rarity set from storage minecraft:reforge data.reforge_data[{id:$(forge_id)}].rarity

function reforge:forging/forge_type/custom/reforge with storage minecraft:reforge forge