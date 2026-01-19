scoreboard players set .temp_protective_result const 0
scoreboard players set .temp_protective_result_display const 0
scoreboard players set .2 const 2
scoreboard players add @s protective_reforge_hit 1
scoreboard players set @s protective_reforge_cd 10
scoreboard players operation .temp_protective_result const = @s protective_reforge_count
scoreboard players operation .temp_protective_result const *= @s protective_reforge_hit
execute if score .temp_protective_result const matches 21.. run scoreboard players set .temp_protective_result const 20
scoreboard players operation .temp_protective_result_display const = .temp_protective_result const
scoreboard players operation .temp_protective_result_display const /= .2 const
execute store result storage forgecraft:temp ability.protective.amount int 1 run scoreboard players get .temp_protective_result const
function custom_items:armor/protective/apply with storage forgecraft:temp ability.protective
function custom_items:display/bar/update {tag:"protective_reforge"}
function custom_items:display/tick