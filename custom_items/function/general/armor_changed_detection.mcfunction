$scoreboard players set .new_head_id_$(playerid) const -1
$scoreboard players set .new_chest_id_$(playerid) const -1
$scoreboard players set .new_legs_id_$(playerid) const -1
$scoreboard players set .new_feet_id_$(playerid) const -1

$execute store result score .new_head_id_$(playerid) const run data get entity @s equipment.head.components.minecraft:custom_data.global_id
$execute unless data entity @s equipment.head.components.minecraft:custom_data.global_id if data entity @s equipment.head.id store result score .new_head_id_$(playerid) const run random value -1000000000..1000000000
$execute store result score .new_chest_id_$(playerid) const run data get entity @s equipment.chest.components.minecraft:custom_data.global_id
$execute unless data entity @s equipment.chest.components.minecraft:custom_data.global_id if data entity @s equipment.chest.id store result score .new_chest_id_$(playerid) const run random value -1000000000..1000000000
$execute store result score .new_legs_id_$(playerid) const run data get entity @s equipment.legs.components.minecraft:custom_data.global_id
$execute unless data entity @s equipment.legs.components.minecraft:custom_data.global_id if data entity @s equipment.legs.id store result score .new_legs_id_$(playerid) const run random value -1000000000..1000000000
$execute store result score .new_feet_id_$(playerid) const run data get entity @s equipment.feet.components.minecraft:custom_data.global_id
$execute unless data entity @s equipment.feet.components.minecraft:custom_data.global_id if data entity @s equipment.feet.id store result score .new_feet_id_$(playerid) const run random value -1000000000..1000000000

$execute as @s unless score .head_id_$(playerid) const = .new_head_id_$(playerid) const run function custom_items:armor/armor_modified
$execute as @s unless score .head_id_$(playerid) const = .new_head_id_$(playerid) const run return run scoreboard players operation .head_id_$(playerid) const = .new_head_id_$(playerid) const


$execute as @s unless score .chest_id_$(playerid) const = .new_chest_id_$(playerid) const run function custom_items:armor/armor_modified
$execute as @s unless score .chest_id_$(playerid) const = .new_chest_id_$(playerid) const run return run scoreboard players operation .chest_id_$(playerid) const = .new_chest_id_$(playerid) const


$execute as @s unless score .legs_id_$(playerid) const = .new_legs_id_$(playerid) const run function custom_items:armor/armor_modified
$execute as @s unless score .legs_id_$(playerid) const = .new_legs_id_$(playerid) const run return run scoreboard players operation .legs_id_$(playerid) const = .new_legs_id_$(playerid) const


$execute as @s unless score .feet_id_$(playerid) const = .new_feet_id_$(playerid) const run function custom_items:armor/armor_modified
$execute as @s unless score .feet_id_$(playerid) const = .new_feet_id_$(playerid) const run return run scoreboard players operation .feet_id_$(playerid) const = .new_feet_id_$(playerid) const
