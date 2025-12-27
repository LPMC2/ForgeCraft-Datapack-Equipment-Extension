summon item_display ~ ~ ~ {UUID:[I;1317755365,-771735077,-1635453854,986072799]}
$execute as 4e8b59e5-d200-41db-9e84-f4623ac646df run data modify entity @s item set from storage forgecraft:player store[{id:$(id)}].offhand_item
item replace entity @s weapon.offhand with air
execute as 4e8b59e5-d200-41db-9e84-f4623ac646df run data modify entity @s item.count set value 2
item replace entity @s weapon.offhand from entity 4e8b59e5-d200-41db-9e84-f4623ac646df container.0
kill 4e8b59e5-d200-41db-9e84-f4623ac646df