scoreboard players add @s timer_second 1
execute if score @s timer_second matches 20.. run function custom_items:general/tick_action
function custom_items:armor/tick
#execute as @a at @s if entity @s[advancements={entity_hit_matching:player_hit=true}] run function custom_items:armor/player_tookdamage
execute if score @s sneaking matches 1.. run function custom_items:general/on_sneak
execute if score @s death_count matches 1.. run function custom_items:general/on_death
execute if score @s sprint_distance matches 1.. run function custom_items:general/on_sprint