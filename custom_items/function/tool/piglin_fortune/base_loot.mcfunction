execute if predicate reforge:1_percentage run return run function custom_items:tool/piglin_fortune/treasure_loot
summon item ~ ~ ~ {Tags:["forgecraft_loot","init"],PickupDelay:5,Item:{id:"minecraft:stone",count:1}}
execute as @n[type=item,tag=forgecraft_loot,tag=init] run loot replace entity @s container.0 loot minecraft:chests/bastion_other
particle dust{color:[1.000,0.867,0.000],scale:1} ~ ~ ~ 0.1 0.1 0.1 1 25 normal
playsound minecraft:block.amethyst_block.break master @a ~ ~ ~ 1 2 0
tag @n[tag=forgecraft_loot,tag=init] remove init