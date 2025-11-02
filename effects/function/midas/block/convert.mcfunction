execute align xyz positioned ~0.5 ~0.5 ~0.5 if entity @n[type=marker,tag=midas_converted_block,distance=..0.75] run return run scoreboard players set @n[type=marker,tag=midas_converted_block,distance=..1] const 0
execute align xyz if block ~0.5 ~0.5 ~0.5 #minecraft:features_cannot_replace run return fail
execute align xyz if block ~0.5 ~0.5 ~0.5 #minecraft:replaceable run return fail
execute align xyz if block ~0.5 ~0.5 ~0.5 #minecraft:portals run return fail
execute unless entity 4e8b59e5-d200-41db-9e84-f4623ac646df align xyz run summon item_display ~0.5 ~0.5 ~0.5 {UUID:[I;1317755365,-771735077,-1635453854,986072799]}
loot replace entity 4e8b59e5-d200-41db-9e84-f4623ac646df container.0 mine ~ ~ ~ minecraft:shears[minecraft:enchantments={silk_touch:1}]
execute at 4e8b59e5-d200-41db-9e84-f4623ac646df run summon marker ~ ~ ~ {Tags:["block_init","midas_converted_block"],data:{block_id:""}}
execute as @n[type=marker,tag=midas_converted_block,tag=block_init] run data modify entity @s data.block_id set from entity 4e8b59e5-d200-41db-9e84-f4623ac646df item.id
execute as @n[type=marker,tag=midas_converted_block,tag=block_init] run data modify entity @s data.block_components set from block ~ ~ ~ components
execute as @n[type=marker,tag=midas_converted_block,tag=block_init] run data modify entity @s data.block_items set from block ~ ~ ~ Items
execute as @n[type=marker,tag=midas_converted_block,tag=block_init] run data modify entity @s data.block_profile set from block ~ ~ ~ profile
setblock ~ ~ ~ minecraft:gold_block replace
tag @n[type=marker,tag=block_init] remove block_init
kill 4e8b59e5-d200-41db-9e84-f4623ac646df