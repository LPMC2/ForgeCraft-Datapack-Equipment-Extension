# Required Commands: #
execute store result score @s itemid run data get entity @s SelectedItem.components.minecraft:custom_data.global_id
execute if items entity @s weapon.mainhand #custom_items:netherite_weapons unless data entity @s SelectedItem.components.minecraft:custom_data.netherite_convert run function custom_items:weapon/itemslot/update_netherite
data modify storage minecraft:item store.itemid set from entity @s SelectedItem.components.minecraft:custom_data.typename
execute store result storage minecraft:item store.playerid int 1 run scoreboard players get @s id
function custom_items:weapon/itemslot/store_scoreboard_obj with storage minecraft:item store
scoreboard players operation @s last.slot = @s sel.slot
# ------------------ #
# -----< Custom >----#
execute as @s run function custom_items:weapon/aotd/reset
#execute if data entity @s SelectedItem.components.minecraft:custom_data.aspect_of_the_defense run function custom_items:weapon/aotd/calculate
#execute if data entity @s SelectedItem.components.minecraft:custom_data.heartstoner run function custom_items:weapon/heartstoner/init
#execute unless data entity @s SelectedItem.components.minecraft:custom_data.heartstoner run function custom_items:weapon/heartstoner/unuse
execute if data entity @s SelectedItem.components.minecraft:custom_data.swarming run function custom_items:weapon/swarming/init
execute unless data entity @s SelectedItem.components.minecraft:custom_data.swarming run function custom_items:weapon/swarming/unuse
#execute if data entity @s SelectedItem.components.minecraft:custom_data.poseidon run function custom_items:weapon/poseidon/apply
#execute unless data entity @s SelectedItem.components.minecraft:custom_data.poseidon run function custom_items:weapon/poseidon/reset 