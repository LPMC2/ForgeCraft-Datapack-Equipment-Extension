data modify entity @s pickup set value 1
data modify entity @s Owner set from entity @p[tag=scavenger_owner] UUID
particle minecraft:smoke ~ ~ ~ 0 0 0 0.1 50
playsound minecraft:block.vault.insert_item master @a ~ ~ ~ 1 1.5 0