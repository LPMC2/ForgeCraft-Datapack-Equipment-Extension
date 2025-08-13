execute at @s if entity @s[type=arrow] run summon arrow ^ ^0.5 ^ {life:1199,damage:2d,crit:0b,Motion:[0,0,0],Tags:["arrow_ignore","initarrow"]}
execute at @s if entity @s[type=spectral_arrow] run summon spectral_arrow ^ ^0.5 ^ {life:1199,damage:2d,crit:1b,Motion:[0,0,0],Tags:["arrow_ignore","initarrow"]}
$execute as @e[tag=initarrow,limit=1] run function custom_items:arrow/set_arrow_data_no_pos with storage minecraft:arrow storage[{$(id):{id:$(id)}}].$(id)
tag @e[tag=initarrow] remove initarrow
