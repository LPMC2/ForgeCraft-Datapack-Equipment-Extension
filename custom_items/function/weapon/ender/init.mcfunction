execute unless score @s reforge_ender_eye_count matches 0.. run scoreboard players set @s reforge_ender_eye_count 0
execute store result score @s reforge_ender_eye_count run clear @s minecraft:ender_eye 0
function custom_items:display/add {tag:"ender_reforge",type:"countdown",max:1,selector:"@s",score:"reforge_ender_eye_count",format:"number",color:"#08be82",label:"👁 Ender Eye: ",unit:""}