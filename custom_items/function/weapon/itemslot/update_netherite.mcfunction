execute at @s run summon item_display ~ ~ ~ {view_range:0f,Tags:["forgecraft_init","target_item","netherite_convert"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]},item:{id:"minecraft:stone",count:1}}
data modify entity @n[tag=forgecraft_init,tag=netherite_convert,type=item_display] item set from entity @s SelectedItem
execute as @n[tag=forgecraft_init,tag=netherite_convert,type=item_display] run function reforge:forging/string_data/type_name/get_type
data modify entity @n[tag=forgecraft_init,tag=netherite_convert,type=item_display] item.components.minecraft:custom_data.typename set from storage minecraft:string storage.combined_name
#data modify entity @n[tag=forgecraft_init,tag=netherite_convert,type=item_display] item.components.minecraft:custom_data.typename set string entity @s SelectedItem.id 10
data modify entity @n[tag=forgecraft_init,tag=netherite_convert,type=item_display] item.components.minecraft:custom_data.netherite_convert set value 1b
item replace entity @s weapon.mainhand from entity @n[tag=forgecraft_init,tag=netherite_convert,type=item_display] container.0
kill @n[tag=forgecraft_init,tag=netherite_convert,type=item_display]