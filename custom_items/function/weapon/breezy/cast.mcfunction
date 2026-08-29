tag @s add breezy_reforge
scoreboard players set @s breezy_reforge_cd 5
execute if score @s sneaking matches 1.. at @s run return run function custom_items:weapon/breezy/cast/sneak
function custom_items:weapon/breezy/cast/basic
function custom_items:display/add {tag:"breezy_reforge",type:"countdown",max:5,selector:"@s",score:"breezy_reforge_cd",format:"number",color:"#e2e2e2",label:"💨 Breezy CD: ",unit:"s"}