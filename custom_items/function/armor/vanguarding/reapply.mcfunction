scoreboard players set .temp_vanguarding_effect const 0
execute if data entity @s equipment.head.components.minecraft:custom_data.vanguarding run scoreboard players add .temp_vanguarding_effect const 1
execute if data entity @s equipment.chest.components.minecraft:custom_data.vanguarding run scoreboard players add .temp_vanguarding_effect const 1
execute if data entity @s equipment.legs.components.minecraft:custom_data.vanguarding run scoreboard players add .temp_vanguarding_effect const 1
execute if data entity @s equipment.feet.components.minecraft:custom_data.vanguarding run scoreboard players add .temp_vanguarding_effect const 1
execute store result storage forgecraft:temp ability.amt int 1 run scoreboard players remove .temp_vanguarding_effect const 1
execute if score .temp_vanguarding_effect const matches 0.. run function custom_items:armor/vanguarding/apply with storage forgecraft:temp ability