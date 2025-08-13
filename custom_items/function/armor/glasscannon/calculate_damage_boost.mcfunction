scoreboard players set .damage_boost const 0
scoreboard players set .cal_damage_boost const 0
scoreboard players set .armor_count const 0
scoreboard players set .armor_points const 0
scoreboard players set .max_armor_points const 20
scoreboard players set .4 const 4
execute as @s run function custom_items:armor/glasscannon/reset
# Calculate Glass-Cannon Equipment boost
execute if data entity @s equipment.head.components.minecraft:custom_data.glasscannon run scoreboard players add .armor_count const 1
execute if data entity @s equipment.chest.components.minecraft:custom_data.glasscannon run scoreboard players add .armor_count const 1
execute if data entity @s equipment.legs.components.minecraft:custom_data.glasscannon run scoreboard players add .armor_count const 1
execute if data entity @s equipment.feet.components.minecraft:custom_data.glasscannon run scoreboard players add .armor_count const 1

# Calculate Armor Points
execute store result score .armor_points const run attribute @s minecraft:armor get
execute if score .armor_points const matches 20.. run scoreboard players set .armor_points const 20
scoreboard players operation .damage_boost const = .max_armor_points const
scoreboard players operation .damage_boost const -= .armor_points const
function custom_items:armor/glasscannon/calculate_armor_damage

scoreboard players operation .damage_boost const *= .armor_count const
execute store result storage minecraft:damage store.value int 1 run scoreboard players get .damage_boost const
execute if entity @s[advancements={reforge:glasscannon_reforge=false}] if score .damage_boost const matches 12.. run advancement grant @s only reforge:glasscannon_reforge
execute as @s if score .armor_count const matches 1.. run function custom_items:armor/glasscannon/apply with storage minecraft:damage store