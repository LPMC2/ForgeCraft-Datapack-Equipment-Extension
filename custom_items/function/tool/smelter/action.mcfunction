execute at @s run item modify entity @s container.0 custom_items:smelt
execute at @s run playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 0.5 2 0
execute at @s run particle minecraft:smoke ~ ~ ~ 0.1 0.1 0.1 0.05 20