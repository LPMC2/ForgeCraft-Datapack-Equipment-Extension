scoreboard players set .chest_type const 1
summon item ~ ~ ~ {Tags:["forgecraft_loot","init"],PickupDelay:5,Item:{id:"minecraft:stone",count:1}}
execute store result score .chest_type const run random value 1..14
scoreboard players reset .illager_fortune_success const
execute as @n[type=item,tag=forgecraft_loot,tag=init] run function custom_items:tool/illager_fortune/set_loot
execute unless score .illager_fortune_success const matches 1.. run function custom_items:tool/illager_fortune/set_loot_1_21_11
particle happy_villager ~ ~ ~ 0.1 0.1 0.1 1 25 normal
playsound minecraft:block.amethyst_block.break master @a ~ ~ ~ 1 2 0
tag @n[tag=forgecraft_loot,tag=init] remove init