#------------Guide----------------#
# Method: Modify entity data (Reason: unable to stack with current attack damage, /damage will only determine from comparing current damage and command damage, the one that's highest will apply)
# For Setup damage data:
# Storage: minecraft:damage store
# -> damage: store.damage
# -> New Health: store.health
# -> target: @s
#---------------------------------#
execute store result score .currenthealth const run data get entity @s Health
execute store result score .damage const run data get storage minecraft:damage store.damage

scoreboard players operation .currenthealth const += .damage const
execute store result storage minecraft:damage store.health double 1 run scoreboard players get .currenthealth const
execute as @s run function custom_items:health/data_modify/apply_health with storage minecraft:damage store