execute at @s run summon zombie ~ ~ ~ {Tags:["vamp_init","unconvertable"]}
execute as @n[tag=vamp_init] run function mobs:vampire/init
tag @n[tag=vamp_init] remove vamp_init