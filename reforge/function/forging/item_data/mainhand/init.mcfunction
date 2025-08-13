#item replace entity @s weapon.mainhand from entity @n[type=minecraft:item_display,tag=target_item_forgecraft] container.0
data modify entity @n[type=minecraft:skeleton] equipment.mainhand.id set from entity @n[type=minecraft:item_display,tag=target_item_forgecraft] item.id
#data remove entity @s equipment.mainhand.components.minecraft:enchantments
execute store result storage minecraft:reforge vanilla.uuid_1 int 1 run random value -999999999..999999999
execute store result storage minecraft:reforge vanilla.uuid_2 int 1 run random value -999999999..999999999
execute store result storage minecraft:reforge vanilla.uuid_3 int 1 run random value -999999999..999999999
execute store result storage minecraft:reforge vanilla.uuid_4 int 1 run random value -999999999..999999999
execute as @s run function reforge:forging/item_data/mainhand/durability/get
execute as @s run function reforge:forging/item_data/mainhand/damage/init
execute as @s run function reforge:forging/item_data/mainhand/ranged/get
execute as @s run function reforge:forging/item_data/mainhand/tool/get
execute as @s run function reforge:forging/item_data/mainhand/armor/get

#function reforge:forging/item_data/clear_slots