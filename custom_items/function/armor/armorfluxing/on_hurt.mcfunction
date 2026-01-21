execute if score @s armorfluxing_reforge_cd matches 1.. run return fail
scoreboard players set .temp_health const 20
scoreboard players set .temp_amt const 0
execute store result score .temp_health const run data get entity @s Health
execute unless score .temp_health const matches ..5 run return fail
scoreboard players operation .temp_amt const = @s armorfluxing_reforge_count
execute store result storage forgecraft:temp ability.armorfluxing.amount int 1 run scoreboard players remove .temp_amt const 1
execute unless score @s armorfluxing_reforge_cd matches 1.. run function custom_items:display/add {tag:"armorfluxing_reforge",type:"countdown",max:60,selector:"@s",score:"armorfluxing_reforge_cd",format:"number",color:"#2ee7e4",label:"❣ Armor-Fluxing CD: ",unit:"s"}
scoreboard players set @s armorfluxing_reforge_cd 60
function custom_items:armor/armorfluxing/apply with storage forgecraft:temp ability.armorfluxing