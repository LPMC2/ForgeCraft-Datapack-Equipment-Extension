$execute if score .super_chainmail_effect const matches ..99 run attribute @s minecraft:armor modifier add fortified_effect 0.$(effect) add_multiplied_total
execute if score .super_chainmail_effect const matches 100.. run attribute @s minecraft:armor modifier add fortified_effect 1 add_multiplied_total
tag @s add fortified_reforge