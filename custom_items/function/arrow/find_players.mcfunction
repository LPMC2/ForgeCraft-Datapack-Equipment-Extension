execute store result score .id1 forgecraft.id run data get entity @s UUID[0]
execute store result score .id2 forgecraft.id run data get entity @s UUID[1]
execute store result score .id3 forgecraft.id run data get entity @s UUID[2]
execute store result score .id4 forgecraft.id run data get entity @s UUID[3]
execute store result score .sourceid1 forgecraft.id run data get entity @e[tag=find,limit=1] Owner[0]
execute store result score .sourceid2 forgecraft.id run data get entity @e[tag=find,limit=1] Owner[1]
execute store result score .sourceid3 forgecraft.id run data get entity @e[tag=find,limit=1] Owner[2]
execute store result score .sourceid4 forgecraft.id run data get entity @e[tag=find,limit=1] Owner[3]
execute if score .id1 forgecraft.id = .sourceid1 forgecraft.id if score .id2 forgecraft.id = .sourceid2 forgecraft.id if score .id3 forgecraft.id = .sourceid3 forgecraft.id if score .id4 forgecraft.id = .sourceid4 forgecraft.id run tag @s add arrow_owner