execute store result storage minecraft:mining store.block_reach float 1.5 run attribute @s minecraft:block_interaction_range get
scoreboard players set .type const 0
execute if items entity @s weapon.mainhand #minecraft:pickaxes run scoreboard players set .type const 1
execute if items entity @s weapon.mainhand #minecraft:axes run scoreboard players set .type const 2
execute if items entity @s weapon.mainhand #minecraft:shovels run scoreboard players set .type const 4
execute if items entity @s weapon.mainhand #minecraft:hoes run scoreboard players set .type const 3
execute as @s run function custom_items:tool/chaining/detection with storage minecraft:mining store