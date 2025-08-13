scoreboard players set @s warrior_count 0

execute if items entity @s armor.head *[minecraft:custom_data~{warrior:1}] run scoreboard players add @s warrior_count 1
execute if items entity @s armor.chest *[minecraft:custom_data~{warrior:1}] run scoreboard players add @s warrior_count 1
execute if items entity @s armor.legs *[minecraft:custom_data~{warrior:1}] run scoreboard players add @s warrior_count 1
execute if items entity @s armor.feet *[minecraft:custom_data~{warrior:1}] run scoreboard players add @s warrior_count 1
execute if entity @s[advancements={reforge:warrior_reforge=false}] if score @s warrior_count matches 4 run advancement grant @s only reforge:warrior_reforge
execute as @s run function custom_items:armor/warrior/reset