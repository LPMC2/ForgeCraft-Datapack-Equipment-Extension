tag @s add scavenger_owner
execute at @s run execute as @e[type=#minecraft:impact_projectiles,distance=..20,tag=!scavenger,nbt={inGround:1b}] at @s if data entity @s pickup run function custom_items:armor/scavenger/item_init
tag @s remove scavenger_owner