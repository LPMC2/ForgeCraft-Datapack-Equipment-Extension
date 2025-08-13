$execute as @e[type=item,nbt={Age:0s},distance=..$(block_reach)] at @s unless data entity @s Owner run function custom_items:tool/experienced/action
