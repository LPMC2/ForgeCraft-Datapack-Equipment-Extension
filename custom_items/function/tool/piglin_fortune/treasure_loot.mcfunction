summon item ~ ~ ~ {Glowing:1b,Tags:["forgecraft_loot","init"],PickupDelay:5,Item:{id:"minecraft:stone",count:1}}
execute as @n[type=item,tag=forgecraft_loot,tag=init] run loot replace entity @s container.0 loot minecraft:chests/bastion_treasure
particle dust{color:[1.000,0.769,0.012],scale:1.5} ~ ~ ~ 0.5 0.5 0.5 1 25 normal
playsound minecraft:block.amethyst_block.break master @a ~ ~ ~ 2 1.5 0
tag @n[tag=forgecraft_loot,tag=init] remove init