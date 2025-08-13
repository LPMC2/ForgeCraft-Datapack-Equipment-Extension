execute store result score .id1 id run data get entity @s UUID[0]
execute store result score .id2 id run data get entity @s UUID[1]
execute store result score .id3 id run data get entity @s UUID[2]
execute store result score .id4 id run data get entity @s UUID[3]
execute store result score .sourceid1 id run data get entity @e[tag=find,limit=1] Owner[0]
execute store result score .sourceid2 id run data get entity @e[tag=find,limit=1] Owner[1]
execute store result score .sourceid3 id run data get entity @e[tag=find,limit=1] Owner[2]
execute store result score .sourceid4 id run data get entity @e[tag=find,limit=1] Owner[3]
execute if score .id1 id = .sourceid1 id if score .id2 id = .sourceid2 id if score .id3 id = .sourceid3 id if score .id4 id = .sourceid4 id run tag @s add arrow_owner