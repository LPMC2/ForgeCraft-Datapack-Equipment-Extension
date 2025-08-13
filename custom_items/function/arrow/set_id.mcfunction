execute if entity @s[tag=!arrow_ignore] run scoreboard players operation @p[tag=arrow_owner] arrow_id = @s[tag=!arrow_ignore] id
tag @e remove find
tag @a remove arrow_owner