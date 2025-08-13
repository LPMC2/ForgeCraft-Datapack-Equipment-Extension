scoreboard players set @s ability_cd1 0
execute if entity @s[tag=sinister] run function mobs:sinister/action
execute if entity @s[tag=cursed] run function mobs:cursed/pick_block
execute if entity @s[tag=ranger_enderman] run function mobs:ranger_enderman/fire
execute if entity @s[tag=superior_guardian] run function mobs:superior_guardian/fire
execute if entity @s[tag=light_arrow] run function custom_items:arrow/light/reset