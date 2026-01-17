attribute @s minecraft:attack_damage modifier remove inferno_boost
attribute @s minecraft:attack_speed modifier remove inferno_boost
playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1 1 0
function custom_items:display/remove {tag:"inferno_reforge"}