execute if data storage minecraft:attribute new{attribute_actual_type:"minecraft:gravity"} run return fail
execute if data storage minecraft:attribute new{attribute_actual_type:"minecraft:scale"} run return fail
execute if data storage minecraft:attribute new{attribute_actual_type:"minecraft:burning_time"} run return fail
scoreboard players set .temp_bonus_amount const 0
scoreboard players set .temp_attribute_amount const 0
scoreboard players set .temp_cal_attribute_amount const 0
scoreboard players operation .temp_bonus_amount const = @p[tag=targetplayer] forgecraft_lvl_stat_boost
execute unless score .temp_bonus_amount const matches 1.. run return fail
scoreboard players add .temp_bonus_amount const 100
scoreboard players set .100 const 100
scoreboard players set .-1 const -1
execute store result score .temp_attribute_amount const run data get storage minecraft:attribute new.attribute_amount 100
scoreboard players operation .temp_cal_attribute_amount const = .temp_attribute_amount const
scoreboard players operation .temp_cal_attribute_amount const *= .temp_bonus_amount const
scoreboard players operation .temp_attribute_amount const *= .100 const
scoreboard players operation .temp_cal_attribute_amount const -= .temp_attribute_amount const
execute if score .temp_cal_attribute_amount const matches ..-1 run scoreboard players operation .temp_cal_attribute_amount const *= .-1 const
scoreboard players operation .temp_attribute_amount const += .temp_cal_attribute_amount const
execute store result storage minecraft:attribute new.attribute_amount double 0.0001 run scoreboard players get .temp_attribute_amount const