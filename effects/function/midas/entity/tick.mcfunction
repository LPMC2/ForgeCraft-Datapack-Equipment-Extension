execute if score @s midas_converted matches ..-1 run scoreboard players set @s midas_converted 0
scoreboard players add @s midas_converted 1
execute if score @s midas_converted matches 100.. run function effects:midas/entity/revert