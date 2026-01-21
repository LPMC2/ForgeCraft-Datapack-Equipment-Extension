scoreboard players set .temp_armor const 0
execute store result score .temp_armor const run attribute @s minecraft:armor get
scoreboard players remove .temp_armor const 5
execute unless score .temp_armor const matches 1.. run return fail
effect give @s instant_health 1 1 true
effect give @s absorption 4 0 false
function effects:armor_reduction/add_custom {amount:5}
execute at @s run playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 1 1.35 0
execute at @s run particle minecraft:heart ~ ~ ~ 0.3 0.6 0.3 1 5 normal