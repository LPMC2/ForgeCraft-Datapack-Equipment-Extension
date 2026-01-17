$attribute @s minecraft:max_health modifier add leeched $(value) add_value
$scoreboard players add @s heal $(value)
execute if entity @s[type=player] run function custom_items:display/add {tag:"leeching_pos_reforge",type:"status",max:0,selector:"@s",score:"",format:"string",color:"red",label:"❤ Leeching Bonus",unit:"s"}