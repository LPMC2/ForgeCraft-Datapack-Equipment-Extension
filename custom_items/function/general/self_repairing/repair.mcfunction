scoreboard players set .offhand self_repairing -1
scoreboard players set .mainhand self_repairing -1
scoreboard players set .head self_repairing -1
scoreboard players set .chest self_repairing -1
scoreboard players set .legs self_repairing -1
scoreboard players set .feet self_repairing -1
execute store result score .offhand self_repairing run data get entity @s equipment.offhand.components.minecraft:custom_data.self_repairing
execute store result score .mainhand self_repairing run data get entity @s SelectedItem.components.minecraft:custom_data.self_repairing
execute store result score .head self_repairing run data get entity @s equipment.head.components.minecraft:custom_data.self_repairing
execute store result score .chest self_repairing run data get entity @s equipment.chest.components.minecraft:custom_data.self_repairing
execute store result score .legs self_repairing run data get entity @s equipment.legs.components.minecraft:custom_data.self_repairing
execute store result score .feet self_repairing run data get entity @s equipment.feet.components.minecraft:custom_data.self_repairing

execute as @s if score .offhand self_repairing matches 1.. run function custom_items:general/self_repairing/offhand/repair
execute as @s if score .mainhand self_repairing matches 1.. run function custom_items:general/self_repairing/mainhand/repair
execute as @s if score .head self_repairing matches 1.. run function custom_items:general/self_repairing/head/repair
execute as @s if score .chest self_repairing matches 1.. run function custom_items:general/self_repairing/chest/repair
execute as @s if score .legs self_repairing matches 1.. run function custom_items:general/self_repairing/legs/repair
execute as @s if score .feet self_repairing matches 1.. run function custom_items:general/self_repairing/feet/repair

