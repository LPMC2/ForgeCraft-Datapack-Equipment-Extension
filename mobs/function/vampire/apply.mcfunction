execute as @s[tag=!leeching] if entity @n[tag=onHit,tag=!leeching,tag=vampire] run function custom_items:weapon/leeching/apply
execute as @s[tag=leeching] if entity @n[tag=onHit,tag=leeching,tag=vampire] run scoreboard players set @s leeching 0
execute as @s[tag=leeching] if entity @n[tag=onHit,tag=leeching,tag=vampire] run scoreboard players set @n[tag=onHit,tag=leeching] leeching 0