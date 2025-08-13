
execute if score .istipped const matches 1.. if score .isMagical const matches 1.. run function custom_items:arrow/guardian/cast_potion_strong with storage minecraft:arrow store
 execute if score .isPoison const matches 1.. run function custom_items:arrow/poison/apply_outer_source
 playsound minecraft:entity.breeze.wind_burst master @a ~ ~ ~ 0.7 2 0
 particle minecraft:nautilus ~ ~ ~ 0 0 0 1 20
 particle minecraft:gust ~ ~ ~ 0 0 0 1 0