execute if predicate reforge:50_50 run return fail
execute store result storage minecraft:mining store.block_reach float 1.5 run attribute @s minecraft:block_interaction_range get
scoreboard players set .item_type const 0
execute store result score .item_type const run data get entity @s SelectedItem.components.minecraft:custom_data.typeid
execute as @s unless score .item_type const matches 7 run return run function custom_items:tool/experienced/action with storage minecraft:mining store
execute as @s if score .item_type const matches 7 run return run function custom_items:tool/experienced/detection with storage minecraft:mining store