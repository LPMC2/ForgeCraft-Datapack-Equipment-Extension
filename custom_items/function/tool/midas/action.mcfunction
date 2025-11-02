data modify entity @s Owner set from entity @p[tag=midas_tool_owner] UUID
data modify entity @s Item.id set value "minecraft:gold_ingot"
data modify entity @s Item.components set value {}
execute at @s run playsound minecraft:block.anvil.land master @a ~ ~ ~ 0.75 2 0
execute at @s run particle minecraft:block_crumble{block_state:"minecraft:gold_block"} ~ ~ ~ 0.25 0.5 0.25 1 20 normal