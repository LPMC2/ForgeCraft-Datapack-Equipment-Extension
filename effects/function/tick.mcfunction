execute if score @s heal matches 0.. run function effects:heal
execute if entity @s[tag=assassin_effect] run function effects:assassin/tick
execute if entity @s[tag=forgecraft_midas_converted] run function effects:midas/entity/tick