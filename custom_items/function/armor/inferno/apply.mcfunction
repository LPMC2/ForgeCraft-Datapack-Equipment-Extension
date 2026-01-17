$attribute @s minecraft:attack_damage modifier add inferno_boost $(digit).$(amount) add_multiplied_total
$attribute @s minecraft:attack_speed modifier add inferno_boost $(digit).$(amount) add_multiplied_total
function custom_items:display/add {tag:"inferno_reforge",type:"status",max:0,selector:"@s",score:"inferno_armor_count",format:"string",color:"red",label:"🔥 Inferno Bonus!",unit:"🔥"}