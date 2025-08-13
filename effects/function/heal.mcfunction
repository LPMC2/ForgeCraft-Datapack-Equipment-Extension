execute if entity @s[type=!player] run return run function effects:heal_mob
effect give @s[scores={heal=0..}] regeneration 1 10 true
effect clear @s[scores={heal=..0}] regeneration
scoreboard players remove @s heal 1

