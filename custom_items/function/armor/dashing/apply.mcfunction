attribute @s minecraft:movement_speed modifier remove dashing
$execute if score .dash dashing_amount matches ..9 run attribute @s minecraft:movement_speed modifier add dashing $(digit).0$(value) add_multiplied_total
$execute if score .dash dashing_amount matches 10.. run attribute @s minecraft:movement_speed modifier add dashing $(digit).$(value) add_multiplied_total
$execute if score .dash dashing_amount matches ..9 run playsound minecraft:entity.breeze.idle_ground master @a ~ ~ ~ 0.2 $(digit).0$(value) 0
$execute if score .dash dashing_amount matches 10.. run playsound minecraft:entity.breeze.idle_ground master @a ~ ~ ~ 0.2 $(digit).$(value) 0