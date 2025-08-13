tag @s add find
execute as @a at @s run function reforge:find_players

execute if data entity @p[tag=targetplayer] SelectedItem.id run data modify storage reforge id set from entity @p[tag=targetplayer] SelectedItem.id
execute if data entity @p[tag=targetplayer] SelectedItem.components run data modify storage reforge components set from entity @p[tag=targetplayer] SelectedItem.components
execute unless data entity @p[tag=targetplayer] SelectedItem.id run data modify storage reforge id set value ""
execute unless data entity @p[tag=targetplayer] SelectedItem.components run data modify storage reforge components set value ""
item modify entity @p[tag=targetplayer] weapon.mainhand reforge:removeitem
execute as @e[tag=target_type_item] at @s if score @s reforgeId = @e[tag=find,limit=1] reforgeId run function reforge:forge_add
tag @s remove find
tag @a remove targetplayer

data modify entity @s interaction.timestamp set value 0