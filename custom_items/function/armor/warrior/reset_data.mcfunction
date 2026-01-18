scoreboard players reset @s warrior_count
scoreboard players reset @s warrior_cd
scoreboard players reset @s warrior_hit
attribute @s minecraft:attack_damage modifier remove warrior
scoreboard players reset .current_warrior_hit const
function custom_items:display/remove {tag:"warrior_reforge"}