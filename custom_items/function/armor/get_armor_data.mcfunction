scoreboard players set .armor_head_id const 0
scoreboard players set .armor_chest_id const 0
scoreboard players set .armor_legs_id const 0
scoreboard players set .armor_feet_id const 0
execute store result score .armor_head_id const run data get entity @s equipment.head.components.minecraft:custom_data.reforgeid
execute store result score .armor_chest_id const run data get entity @s equipment.chest.components.minecraft:custom_data.reforgeid
execute store result score .armor_legs_id const run data get entity @s equipment.legs.components.minecraft:custom_data.reforgeid
execute store result score .armor_feet_id const run data get entity @s equipment.feet.components.minecraft:custom_data.reforgeid
execute if entity @s[advancements={reforge:full_set_reforge=false}] if score .armor_head_id const matches 1.. if score .armor_chest_id const matches 1.. if score .armor_legs_id const matches 1.. if score .armor_feet_id const matches 1.. run advancement grant @s only reforge:full_set_reforge