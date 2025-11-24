execute store result score .req_xp const run data get entity @p[tag=targetplayer] XpLevel
execute if score .req_xp const matches 51.. run scoreboard players set .req_xp const 50
execute store result entity @s data.req_xp int 1 store result score .xp_cost const run scoreboard players get .req_xp const