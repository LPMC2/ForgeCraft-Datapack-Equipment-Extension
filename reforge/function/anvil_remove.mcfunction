tag @s add forge_remove
execute as @e[tag=displayitem] at @s if score @s id = @e[tag=forge_remove,limit=1] id run function reforge:item_remove
kill @n[type=item,nbt={Item:{id:"minecraft:anvil"}},distance=..1]
kill @n[type=item,nbt={Item:{id:"minecraft:chipped_anvil"}},distance=..1]
kill @n[type=item,nbt={Item:{id:"minecraft:damaged_anvil"}},distance=..1]
execute as @n[type=falling_block,nbt={BlockState:{Name:"minecraft:anvil"}},distance=..1] run kill @s
execute as @n[type=falling_block,nbt={BlockState:{Name:"minecraft:chipped_anvil"}},distance=..1] run kill @s
execute as @n[type=falling_block,nbt={BlockState:{Name:"minecraft:damaged_anvil"}},distance=..1] run kill @s
summon item ~ ~ ~ {Tags:["forgecraft_anvil","init"],Item:{id:"minecraft:stone",count:1}}
execute as @n[tag=forgecraft_anvil,tag=init] run data modify entity @s Item set value {id:"minecraft:enderman_spawn_egg",count:1,components:{"minecraft:max_stack_size":1,"minecraft:custom_name":{"color":"yellow","italic":false,"text":"Reforge Anvil"},"minecraft:lore":[{"color":"gray","italic":false,"text":"Place it down by right click on the block. Suggest place on top of a block."},{"color":"gray","italic":false,"text":"Held & Put the item in the slot by right click. Remove item by left click."},{"color":"dark_gray","italic":false,"text":"Smooth Stone Slab -> Item to reforge"},{"color":"dark_gray","italic":false,"text":"Polished Deepslate Slab -> Forge Item"},{"color":"gray","italic":false,"text":"Click on the Gold Text Indicator to reforge the item! )"}],"minecraft:fire_resistant":{},"item_model":"minecraft:anvil","enchantment_glint_override":true,"minecraft:rarity":"uncommon","minecraft:entity_data":{id:"minecraft:block_display",billboard:"fixed",Tags:["reforge_anvil","init"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0f,-0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:anvil",Properties:{facing:"north"}}}}}
execute as @n[tag=forgecraft_anvil,tag=init] run tag @s remove init
execute as @e[tag=forge_tag] at @s if score @s id = @n[tag=forge_remove] id run kill @s