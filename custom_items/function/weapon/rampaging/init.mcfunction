scoreboard players set @s rampaging_cd 0
scoreboard players add @s rampaging_attack 1
execute if score @s rampaging_attack matches 21.. run scoreboard players set @s rampaging_attack 20
function custom_items:display/add {tag:"rampaging_reforge",type:"status",max:20,selector:"@s",score:"rampaging_attack",format:"number",color:"#9600c3",label:"Rampaging: ",unit:" 🔥"}
execute if score @s rampaging_attack matches 20.. run return fail
tag @s add rampaging
execute store result storage minecraft:attack_damage store.value int 1 run scoreboard players get @s rampaging_attack
execute as @s run function custom_items:weapon/rampaging/apply with storage minecraft:attack_damage store
playsound minecraft:entity.evoker_fangs.attack player @a ~ ~ ~ 1 2 0
execute if entity @s[advancements={reforge:rampaging_reforge=false}] if score @s rampaging_attack matches 20.. run advancement grant @s only reforge:rampaging_reforge