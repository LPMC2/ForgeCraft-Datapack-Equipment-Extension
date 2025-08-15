summon item ~ ~ ~ {Glowing:1b,Tags:["forgecraft_loot","init"],PickupDelay:5,Item:{id:"minecraft:stone",count:1}}
execute as @n[type=item,tag=forgecraft_loot,tag=init] run loot replace entity @s container.0 loot minecraft:chests/trial_chambers/reward_ominous
particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0.2 0 0.2 0.01 10
playsound minecraft:block.vault.open_shutter master @a ~ ~ ~ 1 0.75 0
tag @n[tag=forgecraft_loot,tag=init] remove init