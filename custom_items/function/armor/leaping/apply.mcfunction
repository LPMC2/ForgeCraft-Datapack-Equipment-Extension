attribute @s minecraft:attack_damage modifier add leaping_reforge 0.25 add_multiplied_total
playsound minecraft:entity.breeze.jump master @a ~ ~ ~ 1 0.6 0
particle minecraft:happy_villager ~ ~1 ~ 0.35 0.5 0.35 1 40
tag @s add forgecraft_leaping_effect
function custom_items:display/add {tag:"leaping_reforge",type:"status",max:0,selector:"@s",score:"",format:"string",color:"yellow",label:"🐇 Bonus Dmg!",unit:""}