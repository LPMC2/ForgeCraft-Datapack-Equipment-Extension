$execute if entity @n[type=item,nbt={Age:0s,Item:{id:"minecraft:chest"}},distance=..$(block_reach)] run return fail
$execute if entity @n[type=item,nbt={Age:0s,Item:{id:"minecraft:barrel"}},distance=..$(block_reach)] run return fail
$execute if entity @n[type=item,nbt={Age:0s,Item:{id:"minecraft:dispenser"}},distance=..$(block_reach)] run return fail
$execute if entity @n[type=item,nbt={Age:0s,Item:{id:"minecraft:dropper"}},distance=..$(block_reach)] run return fail
$execute if entity @n[type=item,nbt={Age:0s,Item:{id:"minecraft:crafter"}},distance=..$(block_reach)] run return fail
$execute if entity @n[type=item,nbt={Age:0s,Item:{id:"minecraft:furnace"}},distance=..$(block_reach)] run return fail
$execute if entity @n[type=item,nbt={Age:0s,Item:{id:"minecraft:blast_furnace"}},distance=..$(block_reach)] run return fail
$execute if entity @n[type=item,nbt={Age:0s,Item:{id:"minecraft:smoker"}},distance=..$(block_reach)] run return fail
$execute if entity @n[type=item,nbt={Age:0s,Item:{id:"minecraft:decorated_pot"}},distance=..$(block_reach)] run return fail
$execute if entity @n[type=item,nbt={Age:0s,Item:{id:"minecraft:brick"}},distance=..$(block_reach)] run return fail
$execute if entity @n[type=item,nbt={Age:0s,Item:{id:"minecraft:armor_stand"}},distance=..$(block_reach)] run return fail
$execute as @e[type=item,nbt={Age:0s},distance=..$(block_reach)] at @s unless data entity @s Owner unless items entity @s container.* # custom_items:fortune_unavailable run function custom_items:tool/fortunate/doubledrop
