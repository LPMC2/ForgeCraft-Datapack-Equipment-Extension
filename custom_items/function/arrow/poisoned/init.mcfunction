data modify entity @s item.components.minecraft:potion_contents.custom_effects append value {id:"minecraft:poison",amplifier:4,duration:40,show_particles:1b,show_icon:1b}
data modify entity @s item.components.minecraft:potion_contents.custom_effects append value {id:"minecraft:slowness",amplifier:4,duration:20,show_particles:1b,show_icon:1b}
data modify entity @s item.components.minecraft:potion_contents.custom_color set value 6736896
execute at @s run playsound minecraft:entity.witch.drink master @a ~ ~ ~ 1 0.75 0