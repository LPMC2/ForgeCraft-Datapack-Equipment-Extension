scoreboard players set .store_reforgeid const -1
$execute if data entity @s item.components.minecraft:profile.properties[0].signature run scoreboard players set .store_reforgeid const $(reforge_id)
execute if score .store_reforgeid const matches 0.. run scoreboard players operation .item_reforge reforgeId = .store_reforgeid const
execute if score .store_reforgeid const matches 0.. run execute store result storage minecraft:reforge forge.forgeid int 1 run scoreboard players get .store_reforgeid const
