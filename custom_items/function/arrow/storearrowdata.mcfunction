$data modify storage minecraft:test storage append value {$(id):{id:$(id)}}
#$execute store result storage minecraft:arrow storage.$(id).id int 1 run scoreboard players add @s id 0
$data modify storage minecraft:arrow storage[{$(id):{id:$(id)}}].$(id).potion set from entity @s item.components.minecraft:potion_contents.potion
$data modify storage minecraft:arrow storage.[{$(id):{id:$(id)}}].$(id).owner1 set from entity @s Owner[0]
$data modify storage minecraft:arrow storage.[{$(id):{id:$(id)}}].$(id).owner2 set from entity @s Owner[1]
$data modify storage minecraft:arrow storage.[{$(id):{id:$(id)}}].$(id).owner3 set from entity @s Owner[2]
$data modify storage minecraft:arrow storage.[{$(id):{id:$(id)}}].$(id).owner4 set from entity @s Owner[3]
$data modify storage minecraft:arrow storage.[{$(id):{id:$(id)}}].$(id).Motion set from entity @s Motion
$data modify storage minecraft:arrow storage.[{$(id):{id:$(id)}}].$(id).crit set from entity @s crit
$data modify storage minecraft:arrow storage.[{$(id):{id:$(id)}}].$(id).damage set from entity @s damage
$data modify storage minecraft:arrow storage.[{$(id):{id:$(id)}}].$(id).pickup set from entity @s pickup
$data modify storage minecraft:arrow storage.[{$(id):{id:$(id)}}].$(id).piercelevel set from entity @s PierceLevel
$data modify storage minecraft:arrow storage.[{$(id):{id:$(id)}}].$(id).arrow_item set from entity @s item
$data modify storage minecraft:arrow storage.[{$(id):{id:$(id)}}].$(id).arrow_weapon set from entity @s weapon
$data modify storage minecraft:arrow storage.[{$(id):{id:$(id)}}].$(id).Rotation set from entity @s Rotation
$data modify storage minecraft:arrow storage.[{$(id):{id:$(id)}}].$(id).arrow_owner set from entity @s Owner
$data modify storage minecraft:arrow storage.[{$(id):{id:$(id)}}].$(id).pos set from entity @s Pos
$data modify storage minecraft:arrow storage.[{$(id):{id:$(id)}}].id set value $(id)
$data modify storage minecraft:arrow storage.[{$(id):{id:$(id)}}].$(id).fire set from entity @s Fire


