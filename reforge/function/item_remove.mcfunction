execute if data entity @s item{id:"minecraft:structure_void"} run return fail
execute at @s run summon item ~ ~ ~ {Age:-32768,Tags:["iteminit"],Motion:[0.0,0.25,0.0],Item:{id:"minecraft:stone",count:1}}
data modify entity @e[tag=iteminit,limit=1] Item.id set from entity @s item.id
data modify entity @e[tag=iteminit,limit=1] Item.components set from entity @s item.components
execute unless data entity @s item.id run data modify entity @e[tag=iteminit,limit=1] Item.id set value "minecraft:air"
tag @s add target_find
execute as @e[tag=target_type_displayname] at @s if score @s id = @n[tag=target_find] id run function reforge:forging/xp/reset_display
execute as @e[tag=target_forge_display_text] at @s if score @s id = @n[tag=target_find] id run function reforge:forging/xp/reset_display
execute as @e[tag=target_forge_display_item] at @s if score @s id = @n[tag=target_find] id run function reforge:forging/display/reset
tag @s remove target_find
tag @e[tag=iteminit,limit=1] remove iteminit
data modify entity @s item set value {id:"minecraft:structure_void",count:1,components:{"minecraft:item_model":"minecraft:air"}}
tag @a remove targetplayer