scoreboard players set .is_self_repairing const 0
execute if entity @s[nbt={Inventory:[{components:{"minecraft:custom_data":{self_repairing:1}}}]}] run scoreboard players set .is_self_repairing const 1
execute if data entity @s equipment.offhand.components.minecraft:custom_data.self_repairing run scoreboard players set .is_self_repairing const 1
execute if items entity @s armor.* *[minecraft:custom_data~{self_repairing:1}] run scoreboard players set .is_self_repairing const 1
execute as @s if score .is_self_repairing const matches 1.. run function custom_items:general/self_repairing/repair
function mobs:tick_action
execute as @s run function custom_items:armor/action
execute as @s run function custom_items:weapon/action
function custom_items:display/tick
execute at @s run function custom_items:general/health/tick
execute at @s run function custom_items:general/fire/tick
scoreboard players set @s timer_second 0
scoreboard players add .player_auto_check const 1
execute if score .player_auto_check const matches 60.. run function custom_items:general/check