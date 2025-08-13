scoreboard players set @s inferno_armor_count 0
execute as @s run function custom_items:armor/inferno/reset
execute if data entity @s equipment.head.components.minecraft:custom_data.inferno run scoreboard players add @s inferno_armor_count 1
execute if data entity @s equipment.chest.components.minecraft:custom_data.inferno run scoreboard players add @s inferno_armor_count 1
execute if data entity @s equipment.legs.components.minecraft:custom_data.inferno run scoreboard players add @s inferno_armor_count 1
execute if data entity @s equipment.feet.components.minecraft:custom_data.inferno run scoreboard players add @s inferno_armor_count 1