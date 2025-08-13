execute store result score .current_damage const run data get entity @s SelectedItem.components.minecraft:damage
execute store result score .maxdamage const run data get entity @s SelectedItem.components.minecraft:max_damage
execute store result score .maxdamage_store const run data get entity @s SelectedItem.components.minecraft:max_damage
scoreboard players set .100000 const 100000
scoreboard players operation .num const = .mainhand self_repairing
scoreboard players operation .num const *= .100000 const

scoreboard players operation .num const /= .maxdamage const

scoreboard players operation .currentdamage const = .num const
item modify entity @s weapon.mainhand custom_items:item_damage_add