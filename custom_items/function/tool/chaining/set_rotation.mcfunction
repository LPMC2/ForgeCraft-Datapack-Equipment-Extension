execute as @s store result score .RotationX const run data get entity @p Rotation[0]
execute as @s store result score .RotationY const run data get entity @p Rotation[1]
execute as @s at @s if score .RotationX const matches -45..44 run tp @s ~ ~ ~ 0 ~
execute as @s at @s if score .RotationX const matches 45..134 run tp @s ~ ~ ~ 90 ~
execute as @s at @s if score .RotationX const matches 135.. run tp @s ~ ~ ~ 180 ~
execute as @s at @s if score .RotationX const matches ..-135 run tp @s ~ ~ ~ 180 ~
execute as @s at @s if score .RotationX const matches -134..-45 run tp @s ~ ~ ~ 270 ~
execute as @s at @s if score .RotationY const matches -45..45 run tp @s ~ ~ ~ ~ 0
execute as @s at @s if score .RotationY const matches 46.. run tp @s ~ ~ ~ ~ 90
execute as @s at @s if score .RotationY const matches ..-45 run tp @s ~ ~ ~ ~ -90