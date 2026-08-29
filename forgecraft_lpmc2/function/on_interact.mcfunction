advancement revoke @s only reforge:on_interact
advancement revoke @s only reforge:on_interact_hurt
advancement revoke @s only reforge:on_interact_26_2
advancement revoke @s only reforge:on_interact_hurt_26_2
data modify storage minecraft:reforge id set value ""
data modify storage minecraft:reforge components set value ""
execute as @e[type=interaction,tag=inputitem] at @s run function reforge:detection_slot
execute as @e[type=interaction,tag=forge_detection] at @s run function reforge:detection_anvil