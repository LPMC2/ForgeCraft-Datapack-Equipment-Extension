scoreboard players set .super_chainmail_effect const 20
scoreboard players operation .super_chainmail_effect const *= @s super_chainmail_count
execute store result storage minecraft:armor store.effect int 1 run scoreboard players get .super_chainmail_effect const
execute as @s run function custom_items:armor/fortified/apply with storage minecraft:armor store