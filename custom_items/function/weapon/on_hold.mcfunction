# Mainhand
execute if data entity @s SelectedItem.components.minecraft:custom_data.defending run return run effect give @s resistance 1 2 true
execute if data entity @s SelectedItem.components.minecraft:custom_data.electric run return run function custom_items:weapon/electric/start_raycast
execute if data entity @s SelectedItem.components.minecraft:custom_data.ender_reforge_melee run return run function custom_items:weapon/ender/on_use
execute if data entity @s SelectedItem.components.minecraft:custom_data.warped_reforge run return run function custom_items:weapon/warped/on_use
execute if data entity @s SelectedItem.components.minecraft:custom_data.breezy_reforge run return run function custom_items:weapon/breezy/on_use
execute if data entity @s SelectedItem.components.minecraft:custom_data.sorcerer_reforge run return run function custom_items:weapon/sorcerer/on_use
execute if data entity @s SelectedItem.components.minecraft:custom_data.armorfluxing_melee run return run function custom_items:weapon/armorfluxing/on_use
# Offhand
execute if data entity @s equipment.offhand.components.minecraft:custom_data.defending run return run effect give @s resistance 1 2 true
execute if data entity @s equipment.offhand.components.minecraft:custom_data.electric run return run function custom_items:weapon/electric/start_raycast
execute if data entity @s equipment.offhand.components.minecraft:custom_data.ender_reforge_melee run return run function custom_items:weapon/ender/on_use
execute if data entity @s equipment.offhand.components.minecraft:custom_data.warped_reforge run return run function custom_items:weapon/warped/on_use
execute if data entity @s equipment.offhand.components.minecraft:custom_data.breezy_reforge run return run function custom_items:weapon/breezy/on_use
execute if data entity @s equipment.offhand.components.minecraft:custom_data.sorcerer_reforge run return run function custom_items:weapon/sorcerer/on_use
execute if data entity @s equipment.offhand.components.minecraft:custom_data.armorfluxing_melee run return run function custom_items:weapon/armorfluxing/on_use