execute if score .damage_boost const matches 4.. run scoreboard players add .cal_damage_boost const 1
execute if score .damage_boost const matches 4.. run scoreboard players remove .damage_boost const 4
execute if score .damage_boost const matches 4.. run function custom_items:armor/glasscannon/calculate_armor_damage
execute unless score .damage_boost const matches 4.. run scoreboard players operation .damage_boost const = .cal_damage_boost const