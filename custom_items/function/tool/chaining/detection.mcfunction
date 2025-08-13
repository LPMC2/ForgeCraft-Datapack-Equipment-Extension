$execute as @e[type=item,nbt={Age:0s},distance=..$(block_reach)] at @s run function custom_items:tool/chaining/set_rotation
$execute as @e[type=item,nbt={Age:0s},distance=..$(block_reach)] at @s align xyz positioned ~0.5 ~0.5 ~0.5 unless data entity @s Owner run function custom_items:tool/chaining/chain_loop
