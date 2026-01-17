execute at @s run summon wind_charge ~ ~ ~ {Motion:[0.0,-1.0,0.0],acceleration_power:10d,Tags:["breezy_reforge_ball"]}
execute at @s run summon wind_charge ~ ~ ~ {Motion:[0.0,-1.0,0.0],acceleration_power:10d,Tags:["breezy_reforge_ball"]}
function custom_items:display/add {tag:"breezy_reforge",type:"countdown",max:5,selector:"@s",score:"breezy_reforge_cd",format:"number",color:"#e2e2e2",label:"💨 Breezy CD: ",unit:"s"}
playsound minecraft:entity.breeze.shoot master @a ~ ~ ~ 1 1 0