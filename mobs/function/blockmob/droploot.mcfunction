$execute at @s run summon item ~ ~ ~ {Tags:["item_init"],Item:{id:"$(dropitem)",count:1}}
data modify entity @e[tag=item_init,limit=1] Item.components set from entity @s item.components
tag @e[tag=item_init] remove item_init
scoreboard players remove .base_drop_count const 1
execute if score .base_drop_count const matches 1.. run execute as @s run function mobs:blockmob/droploot with storage minecraft:mob store