tag @s add ray_source
function effects:armor_reduction/add
scoreboard players set .distance const 0
playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 2 0
execute store result storage forgecraft:temp store.damage double 1 run attribute @s minecraft:attack_damage get 0.75
execute at @s anchored eyes run function custom_items:weapon/sorcerer/raycast
tag @s remove ray_source