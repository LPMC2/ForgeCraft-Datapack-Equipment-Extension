execute store result storage minecraft:mining store.block_reach float 2 run attribute @s minecraft:block_interaction_range get
tag @s add midas_tool_owner
execute as @s run function custom_items:tool/midas/detection with storage minecraft:mining store
tag @s remove midas_tool_owner