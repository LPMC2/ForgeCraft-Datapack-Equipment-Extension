execute at @s run summon item ~ ~ ~ {PickupDelay:0,Tags:["e_init"],Item:{id:"minecraft:emerald",count:1}}
data modify entity @e[type=item,tag=e_init,limit=1] Owner set from entity @p[tag=emerald_owner] UUID
tag @e[type=item,tag=e_init,limit=1] remove e_init
execute at @s run playsound minecraft:entity.experience_orb.pickup block @a ~ ~ ~ 0.3 2 0
execute at @s run particle minecraft:happy_villager ~ ~ ~ 0.15 0.15 0.15 1 10