tellraw @a [{"color":"aqua","text":"\nForgeCraft Update V1.7.9.1 Direct Change:\n\n - Remove entityid0 - 31.\n\nSome entities may still remain the scores!"}]
execute as @e[type=!#entity_hit_matching:non_mob] run function entity_hit_matching:reset_entity
tellraw @a {"color":"green","text":"[ ✔ Removal successful! ]"}