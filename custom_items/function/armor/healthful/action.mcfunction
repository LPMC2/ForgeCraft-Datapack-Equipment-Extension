scoreboard players set @s healthful_cd 0
execute store result score .max_health const run attribute @s minecraft:max_health get
execute store result score .current_health const run data get entity @s Health
execute if score .current_health const >= .max_health const unless entity @s[nbt={foodLevel:20}] run scoreboard players set @s healthful_cd -200
execute if score .current_health const >= .max_health const unless entity @s[nbt={foodLevel:20}] run effect give @s minecraft:saturation 1 0 true
execute if score .current_health const >= .max_health const run return fail
scoreboard players set .heal_amount const 0
scoreboard players set .5 const 5
scoreboard players operation .heal_amount const = @s healthful_count
scoreboard players operation .heal_amount const *= .5 const
playsound minecraft:block.conduit.activate master @a ~ ~ ~ 1 2 0
execute at @s run execute as @a[distance=..5] at @s run function custom_items:armor/healthful/heal