tag @s add damager
$execute as @s if entity @s[nbt={OnGround:0b}] if block ~ ~ ~ water run execute as @e[type=player,distance=..1.5] at @s run damage @s $(damage) minecraft:mob_attack by @e[tag=damager,limit=1]
tag @s remove damager