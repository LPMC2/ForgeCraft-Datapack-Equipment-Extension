execute store result score .id1 interaction run data get entity @s UUID[0]
execute store result score .id2 interaction run data get entity @s UUID[1]
execute store result score .id3 interaction run data get entity @s UUID[2]
execute store result score .id4 interaction run data get entity @s UUID[3]
execute store result score .forgeid1 interaction run data get entity @e[tag=find,limit=1] attack.player[0]
execute store result score .forgeid2 interaction run data get entity @e[tag=find,limit=1] attack.player[1]
execute store result score .forgeid3 interaction run data get entity @e[tag=find,limit=1] attack.player[2]
execute store result score .forgeid4 interaction run data get entity @e[tag=find,limit=1] attack.player[3]
execute if score .id1 interaction = .forgeid1 interaction if score .id2 interaction = .forgeid2 interaction if score .id3 interaction = .forgeid3 interaction if score .id4 interaction = .forgeid4 interaction run tag @s add targetplayer