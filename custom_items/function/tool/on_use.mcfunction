# Note: this function is directed from custom_items:weapon/itemslot/on_use function
execute as @s if data entity @s SelectedItem.components.minecraft:custom_data.efficient run function custom_items:tool/efficient/pre_detection
execute as @s if data entity @s SelectedItem.components.minecraft:custom_data.cleaving_tool run function custom_items:tool/cleaving/pre_detection
execute as @s if data entity @s SelectedItem.components.minecraft:custom_data.energetic run function custom_items:tool/energetic/action
execute as @s if data entity @s SelectedItem.components.minecraft:custom_data.experienced run function custom_items:tool/experienced/pre_detection
execute as @s if data entity @s SelectedItem.components.minecraft:custom_data.prospector if predicate reforge:10_percentage run function custom_items:tool/prospector/pre_detection
execute as @s if data entity @s SelectedItem.components.minecraft:custom_data.smelter run function custom_items:tool/smelter/pre_detection
execute as @s if data entity @s SelectedItem.components.minecraft:custom_data.replenisher run function custom_items:tool/replenisher/pre_detection
execute as @s if data entity @s SelectedItem.components.minecraft:custom_data.cleaving_melee run function custom_items:weapon/cleaving/apply
execute as @s if data entity @s SelectedItem.components.minecraft:custom_data.chaining_tool run function custom_items:tool/chaining/pre_detection
execute as @s if data entity @s SelectedItem.components.minecraft:custom_data.fortunate run function custom_items:tool/fortunate/pre_detection
execute as @s if data entity @s SelectedItem.components.minecraft:custom_data.cursed run function custom_items:tool/cursed/pre_detection