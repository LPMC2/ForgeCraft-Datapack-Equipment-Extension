attribute @s minecraft:armor modifier remove bonus_protective_armor
attribute @s minecraft:armor_toughness modifier remove bonus_protective_armor
scoreboard players set @s protective_reforge_cd 0
scoreboard players set @s protective_reforge_hit 0
scoreboard players set .temp_protective_result_display const 0
function custom_items:display/bar/update {tag:"protective_reforge"}
function custom_items:display/tick