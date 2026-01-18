scoreboard players set @s super_chainmail_count 0
attribute @s minecraft:armor modifier remove fortified_effect
function custom_items:display/remove {tag:"fortified_reforge"}
tag @s remove fortified_reforge