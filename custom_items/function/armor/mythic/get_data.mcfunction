execute as @s run function custom_items:armor/mythic/reset
execute as @s run scoreboard players set @s mythic_count 0
execute as @s if data entity @s equipment.head.components.minecraft:custom_data.mythic run scoreboard players add @s mythic_count 1
execute as @s if data entity @s equipment.chest.components.minecraft:custom_data.mythic run scoreboard players add @s mythic_count 1
execute as @s if data entity @s equipment.legs.components.minecraft:custom_data.mythic run scoreboard players add @s mythic_count 1
execute as @s if data entity @s equipment.feet.components.minecraft:custom_data.mythic run scoreboard players add @s mythic_count 1
scoreboard players operation .mythic_count const = @s mythic_count
scoreboard players remove .mythic_count const 1
