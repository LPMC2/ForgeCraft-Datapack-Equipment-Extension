execute if entity @s[advancements={tutorial:use_burst_charm=false}] run return 0
scoreboard players remove @s burst_cooldown 1
execute if score @s burst_cooldown matches 1.. run return run advancement revoke @s only tutorial:burst_cooldown
scoreboard players reset @s burst_cooldown
advancement revoke @s only tutorial:use_burst_charm