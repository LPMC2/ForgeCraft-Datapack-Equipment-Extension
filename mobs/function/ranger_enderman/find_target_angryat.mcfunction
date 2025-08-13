execute store result score .target_uuid1 const run data get entity @s UUID[0]
execute store result score .target_uuid2 const run data get entity @s UUID[1]
execute store result score .target_uuid3 const run data get entity @s UUID[2]
execute store result score .target_uuid4 const run data get entity @s UUID[3]
execute store result score .angryat_uuid1 const run data get entity @n[tag=find] AngryAt[0]
execute store result score .angryat_uuid2 const run data get entity @n[tag=find] AngryAt[1]
execute store result score .angryat_uuid3 const run data get entity @n[tag=find] AngryAt[2]
execute store result score .angryat_uuid4 const run data get entity @n[tag=find] AngryAt[3]
execute if score .target_uuid1 const = .angryat_uuid1 const if score .target_uuid2 const = .angryat_uuid2 const if score .target_uuid3 const = .angryat_uuid3 const if score .target_uuid4 const = .angryat_uuid4 const run tag @s add target_angryat