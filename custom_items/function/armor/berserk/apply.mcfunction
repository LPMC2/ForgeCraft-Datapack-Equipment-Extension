attribute @s minecraft:attack_damage modifier remove berserk_boost
$attribute @s minecraft:attack_damage modifier add berserk_boost $(value) add_value
$execute at @s run particle minecraft:angry_villager ~ ~0.6 ~ 0.3 0.3 0.3 1 $(value)
execute at @s run playsound minecraft:entity.warden.listening_angry player @a ~ ~ ~ 1 2 0