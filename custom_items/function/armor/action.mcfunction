execute as @a at @s if items entity @s armor.* *[minecraft:custom_data~{spikey:1}] run function custom_items:armor/spikey/action
execute as @a at @s if items entity @s armor.chest *[minecraft:custom_data~{scavenger:1}] run function custom_items:armor/scavenger/tick
execute as @a at @s if items entity @s armor.head *[minecraft:custom_data~{supervision:1}] run function custom_items:armor/supervision/tick_action
execute as @a at @s if items entity @s armor.* *[minecraft:custom_data~{leaping_reforge:1}] run function custom_items:armor/leaping/tick
execute as @a at @s if score @s super_chainmail_count matches 1.. run function custom_items:armor/fortified/action