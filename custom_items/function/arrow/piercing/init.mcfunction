scoreboard players set .piercelevel const 0
scoreboard players set .add_piercelevel const 0
execute store result score .piercelevel const run data get entity @s PierceLevel
execute store result score .add_piercelevel const run data get entity @s weapon.components.minecraft:custom_data.piercing
execute store result entity @s PierceLevel int 1 run scoreboard players operation .piercelevel const += .add_piercelevel const