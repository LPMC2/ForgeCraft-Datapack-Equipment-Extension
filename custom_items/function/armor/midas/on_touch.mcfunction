execute as @n[tag=onHurt_target,type=!#entity_hit_matching:non_mob] run function effects:midas/entity/convert
execute at @s run particle minecraft:block_crumble{block_state:"minecraft:gold_block"} ~ ~ ~ 0.5 1 0.5 1 40 normal
playsound minecraft:block.anvil.land master @a ~ ~ ~ 0.75 2 0