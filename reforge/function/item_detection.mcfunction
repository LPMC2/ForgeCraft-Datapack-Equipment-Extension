execute if data entity @p[tag=targetplayer] SelectedItem.id run data modify storage reforge id set from entity @p[tag=targetplayer] SelectedItem.id
execute if data entity @p[tag=targetplayer] SelectedItem.components run data modify storage reforge components set from entity @p[tag=targetplayer] SelectedItem.components
execute unless data entity @p[tag=targetplayer] SelectedItem.id run data modify storage reforge id set value ""
execute unless data entity @p[tag=targetplayer] SelectedItem.components run data modify storage reforge components set value ""
execute as @s unless data entity @s item{id:"minecraft:structure_void"} run return run function reforge:item_remove
execute as @s if data entity @s item{id:"minecraft:structure_void"} run return run function reforge:item_add
