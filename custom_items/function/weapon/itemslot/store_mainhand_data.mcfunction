$execute unless data storage forgecraft:player store run data modify storage forgecraft:player store append value {id:$(playerid)}
$execute unless data entity @s SelectedItem run data modify storage forgecraft:player store[{id:$(playerid)}].item set value {id:"minecraft:air"}
$data modify storage forgecraft:player store[{id:$(playerid)}].item set from entity @s SelectedItem
