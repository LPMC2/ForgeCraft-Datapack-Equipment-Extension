$data modify storage forgecraft:data player append value {id:$(id),uuid:[$(uuid_1),$(uuid_2),$(uuid_3),$(uuid_4)]}
$execute store result storage forgecraft:data player[{id:$(id)}].lvl int 1 run scoreboard players get @s forgecraft_lvl
$execute store result storage forgecraft:data player[{id:$(id)}].objective int 1 run scoreboard players get @s forgecraft_lvl_objective
$execute store result storage forgecraft:data player[{id:$(id)}].progress int 1 run scoreboard players get @s forgecraft_lvl_progress
$execute store result storage forgecraft:data player[{id:$(id)}].stat_boost int 1 run scoreboard players get @s forgecraft_lvl_stat_boost
$execute store result storage forgecraft:data player[{id:$(id)}].xp_boost int 1 run scoreboard players get @s forgecraft_lvl_xp_boost
$function custom_items:player_base_features {id:$(id)}