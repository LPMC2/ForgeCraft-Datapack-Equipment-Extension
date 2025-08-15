data modify entity @s Owner set from entity @p[tag=emerald_owner] UUID
data modify entity @s Item.id set value "minecraft:emerald"
data modify entity @s Item.components set value {}
execute at @s run playsound minecraft:entity.experience_orb.pickup block @a ~ ~ ~ 0.3 2 0
execute at @s run particle minecraft:happy_villager ~ ~ ~ 0.15 0.15 0.15 1 10