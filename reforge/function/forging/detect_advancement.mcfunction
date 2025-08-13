execute if score @s[advancements={reforge:forge_5_items=false}] forge_count matches 10.. run advancement grant @s only reforge:forge_5_items
execute as @s run function reforge:forging/forge_data/store
execute as @s run function reforge:forging/forge_data/get_init
execute if entity @s[advancements={reforge:forge_all_unique=false}] if score .reforge_length const matches 76.. run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 0.95 0
execute if entity @s[advancements={reforge:forge_all_unique=false}] if score .reforge_length const matches 76.. run advancement grant @s only reforge:forge_all_unique
execute if entity @s[advancements={reforge:item_enhance=false}] if score .item_reforge reforgeId matches 0 if score .itemtype id matches 1.. run advancement grant @s only reforge:item_enhance
execute if entity @s[advancements={reforge:weapon_beginning=false}] if score .item_reforge reforgeId matches 1.. if score .itemtype id matches 1..2 run advancement grant @s only reforge:weapon_beginning
execute if entity @s[advancements={reforge:heavy_reforge=false}] if score .item_reforge reforgeId matches 2 run advancement grant @s only reforge:heavy_reforge
execute if entity @s[advancements={reforge:maxed_out=false}] if score .enhancement_count const matches 10.. run advancement grant @s only reforge:maxed_out
execute if entity @s[advancements={reforge:enhanced_reforge=false}] if score .item_reforge reforgeId matches 68 run advancement grant @s only reforge:enhanced_reforge
execute if entity @s[advancements={reforge:runic_reforge=false}] if score .item_reforge reforgeId matches 69 run advancement grant @s only reforge:runic_reforge
execute if entity @s[advancements={reforge:sniping_reforge=false}] if score .item_reforge reforgeId matches 20 run advancement grant @s only reforge:sniping_reforge
execute if entity @s[advancements={reforge:supercharged_reforge=false}] if score .item_reforge reforgeId matches 14 run advancement grant @s only reforge:supercharged_reforge
execute if entity @s[advancements={reforge:experienced_reforge=false}] if score .item_reforge reforgeId matches 29 run advancement grant @s only reforge:experienced_reforge
execute if entity @s[advancements={reforge:copperized_reforge=false}] if score .item_reforge reforgeId matches 77 run advancement grant @s only reforge:copperized_reforge
execute if entity @s[advancements={reforge:ender_reforge=false}] if score .item_reforge reforgeId matches 70 run advancement grant @s only reforge:ender_reforge
execute if entity @s[advancements={reforge:dispenser_reforge=false}] if score .item_reforge reforgeId matches 57 run advancement grant @s only reforge:dispenser_reforge
execute if entity @s[advancements={reforge:chaining_reforge=false}] if score .item_reforge reforgeId matches 76 if score .itemtype id matches 7 run advancement grant @s only reforge:chaining_reforge
execute if entity @s[advancements={reforge:unbreakable_reforge=false}] if score .item_reforge reforgeId matches 7 run advancement grant @s only reforge:unbreakable_reforge
execute if entity @s[advancements={reforge:leeching_reforge=false}] if score .item_reforge reforgeId matches 21 run advancement grant @s only reforge:leeching_reforge
execute if entity @s[advancements={reforge:cursed_reforge=false}] if score .item_reforge reforgeId matches 38 run advancement grant @s only reforge:cursed_reforge
execute if entity @s[advancements={reforge:absolute_dedication=false}] if score .item_reforge reforgeId matches 6 if entity @e[type=item_display,limit=1,tag=targetforgeitem,nbt={item:{id:"minecraft:golden_hoe"}}] run advancement grant @s only reforge:absolute_dedication
execute if entity @s[advancements={reforge:superior_guardian=false}] if score .item_reforge reforgeId matches 51 run advancement grant @s only reforge:superior_guardian
execute if entity @s[advancements={reforge:scavenger_reforge=false}] if score .item_reforge reforgeId matches 53 run advancement grant @s only reforge:scavenger_reforge
execute if entity @s[advancements={reforge:efficient_farmer=false}] if score .item_reforge reforgeId matches 54 run advancement grant @s only reforge:efficient_farmer