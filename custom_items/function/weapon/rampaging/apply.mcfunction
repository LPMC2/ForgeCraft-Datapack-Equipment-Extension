attribute @s minecraft:attack_damage modifier remove rampaging
$attribute @s minecraft:attack_damage modifier add rampaging $(value) add_value
$execute at @s run particle item{item:"bone"} ~ ~0.6 ~ 0.3 0.6 0.3 0.1 $(value) normal
$particle minecraft:angry_villager ~ ~0.5 ~ 0.5 1 0.5 1 $(value)