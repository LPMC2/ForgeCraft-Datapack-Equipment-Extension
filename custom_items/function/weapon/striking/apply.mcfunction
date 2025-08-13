scoreboard players set .10 const 10
scoreboard players set .2 const 2
execute store result score .currentdamage const run attribute @p[tag=onHit] minecraft:attack_damage get 2.5
#scoreboard players operation .currentdamage const *= .2 const
execute store result storage minecraft:damage store.damage double 1 run scoreboard players get .currentdamage const
execute as @s run function custom_items:health/damage/apply with storage minecraft:damage store
tag @s add striking
execute at @s run playsound minecraft:entity.player.attack.crit master @a ~ ~ ~ 1 0.65 0
execute at @s run particle minecraft:enchanted_hit ~ ~0.65 ~ 0 0 0 1 20
execute at @s run particle minecraft:crit ~ ~0.65 ~ 0 0 0 1 20
function custom_items:weapon/striking/reset