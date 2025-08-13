attribute @s minecraft:attack_damage modifier remove warrior
$execute if score .warrior_value const matches ..9 run attribute @s minecraft:attack_damage modifier add warrior $(digit).0$(value) add_multiplied_total
$execute if score .warrior_value const matches 10.. run attribute @s minecraft:attack_damage modifier add warrior $(digit).$(value) add_multiplied_total
$execute if score .warrior_value const matches ..9 run playsound minecraft:entity.warden.listening_angry master @a ~ ~ ~ 0.5 $(digit).0$(value) 0
$execute if score .warrior_value const matches 10.. run playsound minecraft:entity.warden.listening_angry master @a ~ ~ ~ 0.5 $(digit).$(value) 0
$execute if score .warrior_value const matches ..9 run particle minecraft:dragon_breath ~ ~1 ~ 0.5 0.5 0.5 $(digit).0$(value) 25
$execute if score .warrior_value const matches 10.. run particle minecraft:dragon_breath ~ ~1 ~ 0.5 0.5 0.5 $(digit).$(value) 25