execute as @s if data entity @s equipment.head.components.minecraft:custom_data.mythic run data modify storage minecraft:armor slot.type set value "head"
execute as @s if data entity @s equipment.head.components.minecraft:custom_data.mythic run data modify storage minecraft:armor slot.id set value "103b"
execute as @s if data entity @s equipment.head.components.minecraft:custom_data.mythic run execute store result storage minecraft:armor slot.power int 1 run scoreboard players get .mythic_count const
execute as @s if data entity @s equipment.head.components.minecraft:custom_data.mythic run function custom_items:armor/mythic/apply_boost with storage minecraft:armor slot
execute as @s if data entity @s equipment.chest.components.minecraft:custom_data.mythic run data modify storage minecraft:armor slot.type set value "chest"
execute as @s if data entity @s equipment.chest.components.minecraft:custom_data.mythic run data modify storage minecraft:armor slot.id set value "102b"
execute as @s if data entity @s equipment.chest.components.minecraft:custom_data.mythic run execute store result storage minecraft:armor slot.power int 1 run scoreboard players get .mythic_count const
execute as @s if data entity @s equipment.chest.components.minecraft:custom_data.mythic run function custom_items:armor/mythic/apply_boost with storage minecraft:armor slot
execute as @s if data entity @s equipment.legs.components.minecraft:custom_data.mythic run scoreboard players add @s mythic_count 1
execute as @s if data entity @s equipment.legs.components.minecraft:custom_data.mythic run data modify storage minecraft:armor slot.type set value "legs"
execute as @s if data entity @s equipment.legs.components.minecraft:custom_data.mythic run data modify storage minecraft:armor slot.id set value "101b"
execute as @s if data entity @s equipment.legs.components.minecraft:custom_data.mythic run execute store result storage minecraft:armor slot.power int 1 run scoreboard players get .mythic_count const
execute as @s if data entity @s equipment.legs.components.minecraft:custom_data.mythic run function custom_items:armor/mythic/apply_boost with storage minecraft:armor slot
execute as @s if data entity @s equipment.feet.components.minecraft:custom_data.mythic run scoreboard players add @s mythic_count 1
execute as @s if data entity @s equipment.feet.components.minecraft:custom_data.mythic run data modify storage minecraft:armor slot.type set value "feet"
execute as @s if data entity @s equipment.feet.components.minecraft:custom_data.mythic run data modify storage minecraft:armor slot.id set value "100b"
execute as @s if data entity @s equipment.feet.components.minecraft:custom_data.mythic run execute store result storage minecraft:armor slot.power int 1 run scoreboard players get .mythic_count const
execute as @s if data entity @s equipment.feet.components.minecraft:custom_data.mythic run function custom_items:armor/mythic/apply_boost with storage minecraft:armor slot
