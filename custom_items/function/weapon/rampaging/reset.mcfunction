scoreboard players set @s rampaging_cd 0
tag @s remove rampaging
scoreboard players set @s rampaging_attack 0
attribute @s minecraft:attack_damage modifier remove rampaging
function custom_items:display/remove {tag:"rampaging_reforge"}