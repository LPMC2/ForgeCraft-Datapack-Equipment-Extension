execute store result storage minecraft:mining store.block_reach float 2 run attribute @s minecraft:block_interaction_range get
tag @s add prospector_owner
execute as @s run function custom_items:tool/prospector/detection with storage minecraft:mining store
tag @s remove prospector_owner