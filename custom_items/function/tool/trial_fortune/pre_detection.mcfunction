scoreboard players set .is_trial_omen const 0
execute if data entity @s active_effects[{id:"minecraft:trial_omen"}] run scoreboard players set .is_trial_omen const 1
execute store result storage minecraft:mining store.block_reach float 1.5 run attribute @s minecraft:block_interaction_range get
execute as @s run function custom_items:tool/trial_fortune/detection with storage minecraft:mining store