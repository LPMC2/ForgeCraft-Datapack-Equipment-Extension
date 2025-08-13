execute at @s if score @s arrow_type matches 1 run summon arrow ^ ^ ^0.5 {life:1199,damage:2d,crit:0b,Motion:[0,0,0],Tags:["arrow_ignore","initarrow"]}
execute at @s if score @s arrow_type matches 2 run summon spectral_arrow ^ ^ ^0.5 {life:1199,damage:2d,crit:0b,Motion:[0,0,0],Tags:["arrow_ignore","initarrow"]}
execute store result storage minecraft:arrow store.id int 1 run scoreboard players get @s arrow_id
$execute as @e[tag=initarrow,limit=1] run function custom_items:arrow/set_arrow_data with storage minecraft:arrow storage[{$(id):{id:$(id)}}].$(id)
execute at @s run playsound minecraft:entity.arrow.shoot master @a ~ ~ ~ 0.3 1 0
tag @e[tag=initarrow] remove initarrow
