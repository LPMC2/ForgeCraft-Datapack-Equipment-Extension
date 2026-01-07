execute store result score .temp_armor const run attribute @s minecraft:armor get
execute if score .temp_armor const matches 1.. store result storage forgecraft:temp effect.armor_reduction.amount int 1 run scoreboard players add @s effect_armor_reduction 1
scoreboard players set @s effect_armor_reduction_cd 5
execute as @s run function effects:armor_reduction/apply with storage forgecraft:temp effect.armor_reduction