scoreboard players set @s warrior_cd 0
scoreboard players set @s warrior_hit 0
attribute @s minecraft:attack_damage modifier remove warrior
scoreboard players set .current_warrior_hit const 0
function custom_items:display/bar/update {tag:"warrior_reforge"}
function custom_items:display/tick