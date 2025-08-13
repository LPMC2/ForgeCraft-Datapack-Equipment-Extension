execute store result score .currentdamage const run attribute @p[tag=onHit] minecraft:attack_damage get
execute store result storage minecraft:damage store.damage double 1 run scoreboard players get .currentdamage const
execute as @s run function custom_items:health/damage/apply with storage minecraft:damage store
execute at @s run particle minecraft:enchanted_hit ~ ~0.65 ~ 0 0 0 1 10 normal
execute at @s run playsound minecraft:entity.player.attack.strong master @a ~ ~ ~ 1 0.75 0