$data modify entity @s Item.components.minecraft:attribute_modifiers[{id:"$(id)"}].amount set from storage minecraft:attribute new.amount
#$say data modify entity @s Item.components.minecraft:attribute_modifiers.modifiers[{id:"$(id)"}] --> $(amount)
#say success add