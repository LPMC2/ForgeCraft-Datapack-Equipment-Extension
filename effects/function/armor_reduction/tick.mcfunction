scoreboard players remove @s effect_armor_reduction_cd 1
execute if score @s effect_armor_reduction_cd matches ..0 run function effects:armor_reduction/reduct
particle item{item:"iron_chestplate"} ~ ~0.65 ~ 0.5 0.5 0.5 0.1 1 normal
playsound minecraft:block.iron.fall master @a ~ ~ ~ 0.2 0.5 0