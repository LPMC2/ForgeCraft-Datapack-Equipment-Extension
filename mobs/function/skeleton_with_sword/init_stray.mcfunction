item replace entity @s weapon.mainhand with minecraft:iron_sword
execute if predicate reforge:50_50 run item replace entity @s weapon.mainhand with minecraft:iron_axe
item modify entity @s weapon.mainhand custom_items:random_enchant
attribute @s minecraft:attack_damage base set 4
attribute @s minecraft:scale base set 1.2
tag @s add stray_sword