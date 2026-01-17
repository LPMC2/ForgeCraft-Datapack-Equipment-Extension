function effects:armor_reduction/reset
execute if score @s effect_armor_reduction matches ..0 run return fail
$attribute @s minecraft:armor modifier add fc_effect_armor_reduction -$(amount) add_value
$function custom_items:display/add {tag:"armor_reduction",type:"countdown",max:1,selector:"@s",score:"effect_armor_reduction_cd",format:"number",color:"#52917c",label:"⛉ Armor Reduction(-$(amount)): ",unit:"s"}