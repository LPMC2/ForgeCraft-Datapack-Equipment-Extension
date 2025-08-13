scoreboard players set .replenisher_available const 0
execute if entity @s[type=item,nbt={Item:{id:"minecraft:wheat_seeds"}}] run data modify storage minecraft:crop store.type set value "minecraft:wheat"
execute if entity @s[type=item,nbt={Item:{id:"minecraft:wheat_seeds"}}] run scoreboard players set .replenisher_available const 1
execute if entity @s[type=item,nbt={Item:{id:"minecraft:beetroot_seeds"}}] run data modify storage minecraft:crop store.type set value "minecraft:beetroots"
execute if entity @s[type=item,nbt={Item:{id:"minecraft:beetroot_seeds"}}] run scoreboard players set .replenisher_available const 1
execute if entity @s[type=item,nbt={Item:{id:"minecraft:carrot"}}] run data modify storage minecraft:crop store.type set value "minecraft:carrots"
execute if entity @s[type=item,nbt={Item:{id:"minecraft:carrot"}}] run scoreboard players set .replenisher_available const 1
execute if entity @s[type=item,nbt={Item:{id:"minecraft:potato"}}] run data modify storage minecraft:crop store.type set value "minecraft:potatoes"
execute if entity @s[type=item,nbt={Item:{id:"minecraft:potato"}}] run scoreboard players set .replenisher_available const 1
execute if entity @s[type=item,nbt={Item:{id:"minecraft:nether_wart"}}] run data modify storage minecraft:crop store.type set value "minecraft:nether_wart"
execute if entity @s[type=item,nbt={Item:{id:"minecraft:nether_wart"}}] run scoreboard players set .replenisher_available const 1
execute if entity @s[type=item,nbt={Item:{id:"minecraft:pumpkin_seeds"}}] run data modify storage minecraft:crop store.type set value "minecraft:pumpkin_stem"
execute if entity @s[type=item,nbt={Item:{id:"minecraft:pumpkin_seeds"}}] run scoreboard players set .replenisher_available const 1
execute if entity @s[type=item,nbt={Item:{id:"minecraft:melon_seeds"}}] run data modify storage minecraft:crop store.type set value "minecraft:melon_stem"
execute if entity @s[type=item,nbt={Item:{id:"minecraft:melon_seeds"}}] run scoreboard players set .replenisher_available const 1
execute if entity @s[type=item,nbt={Item:{id:"minecraft:sweet_berries"}}] run data modify storage minecraft:crop store.type set value "minecraft:sweet_berry_bush"
execute if entity @s[type=item,nbt={Item:{id:"minecraft:sweet_berries"}}] run scoreboard players set .replenisher_available const 1


execute at @s if score .replenisher_available const matches 1.. run function custom_items:tool/replenisher/plant with storage minecraft:crop store