$scoreboard players set @s protective_reforge_count $(count)
scoreboard players set @s protective_reforge_cd 10
scoreboard players set @s protective_reforge_hit 0
execute if score @s protective_reforge_count matches 1.. run function custom_items:display/add {tag:"protective_reforge",type:"status",max:10,selector:".temp_protective_result_display",score:"const",format:"bar",color:"#47a5e3",label:"🛡 Protective Bonus: ",unit:"❙"}
function custom_items:display/bar/update {tag:"protective_reforge"}
function custom_items:display/tick