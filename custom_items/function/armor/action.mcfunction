execute if items entity @s armor.* *[minecraft:custom_data~{spikey:1}] run function custom_items:armor/spikey/action
execute if items entity @s armor.chest *[minecraft:custom_data~{scavenger:1}] run function custom_items:armor/scavenger/tick
execute if score @s supervision_count matches 1.. run function custom_items:armor/supervision/tick_action
execute if items entity @s armor.* *[minecraft:custom_data~{leaping_reforge:1}] run function custom_items:armor/leaping/tick
execute if score @s mysterious_count matches 1.. run function custom_items:armor/mysterious/tick
execute if score @s super_chainmail_count matches 1.. run function custom_items:armor/fortified/action
execute if score @s healthful_count matches 1.. run function custom_items:armor/healthful/tick
execute if score @s protective_reforge_hit matches 1.. run function custom_items:armor/protective/tick