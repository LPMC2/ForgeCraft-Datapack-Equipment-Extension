execute store result score .chance const run random value 1..100
execute store result storage forgecraft:temp store.damage double 1 run attribute @p[tag=onHit] minecraft:attack_damage get
execute as @s at @s if score .chance const matches ..50 run function custom_items:weapon/electric/apply with storage forgecraft:temp store