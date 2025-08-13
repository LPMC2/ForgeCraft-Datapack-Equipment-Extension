$execute at @s if score @s projectile_speed_demical matches 10.. run tp @s ^ ^ ^$(digit).$(demical) ~ ~
$execute at @s if score @s projectile_speed_demical matches ..9 run tp @s ^ ^ ^$(digit).0$(demical) ~ ~
execute at @s run function custom_items:projectile/particle