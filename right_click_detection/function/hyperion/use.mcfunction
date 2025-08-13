
execute unless score @s impulse_cooldown matches 1.. run execute at @s anchored eyes positioned ^ ^ ^ run function right_click_detection:hyperion/ray_start
advancement revoke @s only right_click_detection:impulse_cooldown

advancement revoke @s only right_click_detection:use_hyperion
scoreboard players set @s cd 1
scoreboard players set @s impulse_cooldown 2