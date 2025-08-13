execute if data entity @s SelectedItem.components.minecraft:custom_data.assassin run function custom_items:weapon/assassin/action
execute if data entity @s SelectedItem.components.minecraft:custom_data.guarding run function custom_items:weapon/guarding/apply
execute if data entity @s SelectedItem.components.minecraft:custom_data.heart_of_the_sword run function custom_items:weapon/hots/kill_heal
execute if score @s berserk_armor_count matches 1.. run function custom_items:armor/berserk/on_kill
execute as @s run function game:enemy/death
advancement revoke @s[advancements={entity_hit_matching:on_mob_death=true}] only entity_hit_matching:on_mob_death
