function custom_items:weapon/sorcerer/apply with storage forgecraft:temp store
particle minecraft:instant_effect ~ ~ ~ 0.75 0.75 0.75 0 50 normal
playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 0.5 0
scoreboard players set .distance const 801
