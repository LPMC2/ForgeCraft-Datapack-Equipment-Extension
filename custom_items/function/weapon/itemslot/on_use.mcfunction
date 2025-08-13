# ---------- < Custom Detection > ---------- #
# Raging
execute if data entity @s SelectedItem.components.minecraft:custom_data.raging_melee run function custom_items:weapon/raging/melee/apply
execute if data entity @s SelectedItem.components.minecraft:custom_data.raging_tool run function custom_items:weapon/raging/tool/apply
# Skeleton Sword
execute if data entity @s SelectedItem.components.minecraft:custom_data.rampaging run function custom_items:weapon/rampaging/init
# ------------------------------------------ #
execute as @s run function custom_items:tool/on_use
# Debug
#say item used!
