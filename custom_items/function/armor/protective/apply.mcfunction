attribute @s minecraft:armor modifier remove bonus_protective_armor
attribute @s minecraft:armor_toughness modifier remove bonus_protective_armor
$attribute @s minecraft:armor modifier add bonus_protective_armor $(amount) add_value
$attribute @s minecraft:armor_toughness modifier add bonus_protective_armor $(amount) add_value
execute at @s run playsound minecraft:block.iron.hit master @a ~ ~ ~ 3 1 0
$execute at @s run particle minecraft:vault_connection ~ ~ ~ 0.5 0.5 0.5 1 $(amount)0