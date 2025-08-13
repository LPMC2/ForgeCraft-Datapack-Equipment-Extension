execute at @s run execute as @a[distance=..5] run scoreboard players set @s heal 3
execute at @s run execute as @a[distance=..5] at @s run particle minecraft:heart ~ ~0.65 ~ 0.3 0.6 0.3 1 5
execute at @s run execute as @a[distance=..5] at @s run playsound minecraft:entity.witch.drink player @a ~ ~ ~ 1 0.75 0