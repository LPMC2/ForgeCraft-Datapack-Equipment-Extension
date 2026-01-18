scoreboard players set @s inferno_armor_count 0
attribute @s minecraft:attack_damage modifier remove inferno_boost
attribute @s minecraft:attack_speed modifier remove inferno_boost
function custom_items:display/remove {tag:"inferno_reforge"}