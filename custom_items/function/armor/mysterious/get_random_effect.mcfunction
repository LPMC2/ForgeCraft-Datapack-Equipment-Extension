# ---------- < Guide > ---------- #
# 1. Speed
# 2. Strength
# 3. Regeneration
# 4. Resistance
# 5. Fire Resistance
# 6. Water Breathing
# 7. Health boost
# 8. haste
# 9. night vision
# 10. jump boost
# ------------------------------- #

scoreboard players set .random_effect const 10
scoreboard players set .duration const 0
scoreboard players set .effect_power const 0
execute store result score .random_effect const run random value 1..10
execute store result score .effect_power const run random value 0..1
scoreboard players set .15 const 15
scoreboard players operation .duration const = @s mysterious_count
scoreboard players operation .duration const *= .15 const
execute store result storage minecraft:effect store.value int 1 run scoreboard players get .duration const
execute store result storage minecraft:effect store.power int 1 run scoreboard players get .effect_power const
execute as @s run function custom_items:armor/mysterious/apply with storage minecraft:effect store

