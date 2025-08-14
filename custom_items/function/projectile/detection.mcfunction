$execute at @s if entity @n[type=!#entity_hit_matching:non_mob,dx=$(digit).$(demical),dy=$(digit).$(demical),dz=$(digit).$(demical)] run tag @s add proj_source
$execute at @s run execute as @n[type=!#entity_hit_matching:non_mob,dx=$(digit).$(demical),dy=$(digit).$(demical),dz=$(digit).$(demical)] at @s unless score @n[tag=proj_source] projectile_source_id = @s id run function custom_items:projectile/on_hit_mob with storage minecraft:projectile store
execute at @s unless block ~ ~ ~ #minecraft:replaceable run function custom_items:projectile/on_hit_ground
tag @s remove proj_source