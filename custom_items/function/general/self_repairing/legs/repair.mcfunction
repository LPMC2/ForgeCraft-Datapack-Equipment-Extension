execute store result score .current_damage const run data get entity @s Inventory[{Slot:101b}].components.minecraft:damage
execute store result score .maxdamage const run data get entity @s Inventory[{Slot:101b}].components.minecraft:max_damage
execute store result score .maxdamage_store const run data get entity @s Inventory[{Slot:101b}].components.minecraft:max_damage
scoreboard players set .100000 const 100000
scoreboard players operation .num const = .legs self_repairing
scoreboard players operation .num const *= .100000 const

scoreboard players operation .num const /= .maxdamage const

scoreboard players operation .currentdamage const = .num const
execute store result storage forgecraft:temp data.damage float 0.00001 run scoreboard players get .currentdamage const
item modify entity @s armor.legs custom_items:item_damage_add
execute at @s run playsound minecraft:item.wolf_armor.repair master @a ~ ~ ~ 0.005 1.8 0