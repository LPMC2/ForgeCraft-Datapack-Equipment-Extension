tag @s add find
# Find Player
execute as @a run function reforge:find_players

# Add Tags for identification to target item displays
execute as @e[tag=target_type_item] at @s if score @s id = @e[tag=find,limit=1] id run tag @s add targetforgeitem
execute as @e[tag=target_type_reforge] at @s if score @s id = @e[tag=find,limit=1] id run tag @s add targetforgemodifier

# Detect if the player have enough xp
scoreboard players set .xp_matched const 0
execute as @p[tag=targetplayer] at @s run function reforge:forging/xp/detection
execute unless score .xp_matched const matches 1.. run tellraw @p[tag=targetplayer] [{"bold":true,"color":"red","italic":false,"text":"❌ Not enough xp levels to forge the item!"},[{"bold":false,"color":"gray","italic":false,"text":" ["},{"bold":false,"color":"gray","italic":false,"score":{"name":".cur_xp","objective":"const"}},{"bold":false,"color":"gray","italic":false,"text":" / "},{"bold":false,"color":"gray","italic":false,"score":{"name":".req_xp","objective":"const"}},{"bold":false,"color":"gray","italic":false,"text":"]"}]]
execute unless score .xp_matched const matches 1.. run return run function reforge:forging/detection_reset

# Detect if the player have enough Level
scoreboard players set .level_matched const 0
execute as @p[tag=targetplayer] at @s run function reforge:forging/level/detection
execute unless score .level_matched const matches 1.. run tellraw @p[tag=targetplayer] [{"bold":true,"color":"red","italic":false,"text":"❌ Your current ⚒ Forging Level doesn't match the requirement! "},{"color":"gray","bold":false,"text":"["},{"color":"gray","bold":false,"italic":false,"score":{"name":"@p[tag=targetplayer]","objective":"forgecraft_lvl"}},{"text":"/","color":"gray","bold":false},{"color":"gray","italic":false,"bold":false,"score":{"name":".require_level","objective":"const"}},{"color":"gray","italic":false,"bold":false,"text":"]"}]
execute unless score .level_matched const matches 1.. run return run function reforge:forging/detection_reset

# Forge Item
execute at @s align xyz positioned ~0.5 ~0.5 ~0.5 run summon item ~ ~ ~ {PickupDelay:5,Age:-32768,Tags:["iteminit"],Motion:[0.0,0.25,0.0],Item:{id:"minecraft:stone",count:1}}
execute as @e[type=minecraft:item_display,tag=target_forge_display_item] if score @s id = @n[type=interaction,tag=find] id run function reforge:forging/forge_item/get

# Reset Detections & Data
scoreboard players set .isdisplay const 0
function reforge:forging/resetreforgeitem
function reforge:forging/detection_reset
