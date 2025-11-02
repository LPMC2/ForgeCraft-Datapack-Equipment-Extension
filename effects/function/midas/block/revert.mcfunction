data remove storage forgecraft:midas temp
data modify storage forgecraft:midas temp set from entity @s data
execute at @s align xyz run function effects:midas/block/set_block with storage forgecraft:midas temp
kill @s[type=marker]