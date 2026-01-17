scoreboard players set @s healthful_count 0
scoreboard players set @s healthful_cd 5
execute if data entity @s equipment.head.components.minecraft:custom_data.healthful run scoreboard players add @s healthful_count 1
execute if data entity @s equipment.chest.components.minecraft:custom_data.healthful run scoreboard players add @s healthful_count 1
execute if data entity @s equipment.legs.components.minecraft:custom_data.healthful run scoreboard players add @s healthful_count 1
execute if data entity @s equipment.feet.components.minecraft:custom_data.healthful run scoreboard players add @s healthful_count 1
execute if score @s healthful_count matches ..0 run return run function custom_items:display/remove {tag:"healthful_reforge"}
function custom_items:display/add {tag:"healthful_reforge",type:"countdown",max:5,selector:"@s",score:"healthful_cd",format:"number",color:"light_purple",label:"❣ Healthful CD: ",unit:"s"}