# Chain Limit
execute if score @s[tag=forgecraft,tag=chaining,type=marker,tag=!init] use matches 11.. run return fail
tag @s[tag=forgecraft,tag=chaining,type=marker,tag=!init] add target_chain
scoreboard players operation .type const = @s[tag=forgecraft,tag=chaining,type=marker,tag=!init] type
# Reset
scoreboard players set .chainable const 0
# Mine Block
data remove storage minecraft:chainable temp.type
execute if score .type const matches 1 run data modify storage minecraft:chainable temp.type set value "pickaxe"
execute if score .type const matches 1 if block ~ ~ ~ #minecraft:mineable/pickaxe run setblock ~ ~ ~ air destroy
execute if score .type const matches 2 run data modify storage minecraft:chainable temp.type set value "axe"
execute if score .type const matches 2 if block ~ ~ ~ #minecraft:mineable/axe run setblock ~ ~ ~ air destroy
execute if score .type const matches 3 run data modify storage minecraft:chainable temp.type set value "hoe"
execute if score .type const matches 3 if block ~ ~ ~ #minecraft:mineable/hoe run setblock ~ ~ ~ air destroy
execute if score .type const matches 3 if block ~ ~ ~ #minecraft:crops run setblock ~ ~ ~ air destroy
execute if score .type const matches 4 run data modify storage minecraft:chainable temp.type set value "shovel"
execute if score .type const matches 4 if block ~ ~ ~ #minecraft:mineable/shovel run setblock ~ ~ ~ air destroy
particle minecraft:smoke ~ ~ ~ 0 0 0 0.025 10
particle minecraft:portal ~ ~ ~ 0 0 0 1 20
# Next chain detection
execute as @s run function custom_items:tool/chaining/spawn with storage minecraft:chainable temp 
execute as @e[tag=forgecraft,tag=chaining,type=marker,tag=init] run scoreboard players operation @s use = @n[tag=target_chain,type=marker] use
kill @s[tag=forgecraft,tag=chaining,type=marker,tag=!init]
execute as @e[tag=forgecraft,tag=chaining,type=marker,tag=init] run scoreboard players add @s use 1
# Set Rotation
data modify entity @n[tag=forgecraft,tag=chaining,type=marker,tag=init] Rotation set from entity @s Rotation
#execute as @n[tag=forgecraft,tag=chaining,type=marker,tag=init] run function custom_items:tool/chaining/set_rotation
scoreboard players operation @n[tag=forgecraft,tag=chaining,type=marker,tag=init] type = .type const
execute as @n[tag=forgecraft,tag=chaining,type=marker,tag=init] at @s align xyz positioned ~0.5 ~0.5 ~0.5 if score .chainable const matches 1.. run schedule function custom_items:tool/chaining/start_chain 4t replace
execute unless score .chainable const matches 1.. run kill @e[tag=forgecraft,tag=chaining,type=marker,tag=init]
execute as @e[tag=forgecraft,tag=chaining,type=marker,tag=init] run tag @s remove init
kill @e[tag=forgecraft,tag=chaining,type=marker,scores={use=11..}]