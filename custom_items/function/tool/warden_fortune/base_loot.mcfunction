summon item ~ ~ ~ {Tags:["forgecraft_loot","init"],PickupDelay:5,Item:{id:"minecraft:stone",count:1}}
execute as @n[type=item,tag=forgecraft_loot,tag=init] run loot replace entity @s container.0 loot minecraft:chests/ancient_city
particle minecraft:sculk_soul ~ ~ ~ 0.1 0.1 0.1 0.05 10
playsound minecraft:block.sculk_shrieker.shriek master @a ~ ~ ~ 1 2 0
tag @n[tag=forgecraft_loot,tag=init] remove init