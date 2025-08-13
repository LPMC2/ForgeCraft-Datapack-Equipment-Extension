tag @s add find
scoreboard players set .damage const 0
scoreboard players set .power_damage const 0
scoreboard players set .player_damage const 0
scoreboard players set .crit_damage const 0
scoreboard players set .istipped const 0
scoreboard players set .isspectral const 0
scoreboard players set @s arrow_potion_id -1
scoreboard players set .2 const 2
execute as @a at @s run function custom_items:arrow/find_players

# Base Setup
execute store result score .damage const run data get entity @s damage
execute store result score .power_damage const run data get entity @s weapon.components.minecraft:enchantments.levels.minecraft:power
execute store result score .crit_damage const run data get entity @s crit
execute if entity @s[type=minecraft:spectral_arrow] run scoreboard players set .isspectral const 1
# Set Potion Type
execute as @s run function effects:detect/set_potion_type_from_arrow
# Power Enchantment Damage
scoreboard players operation .damage const += .power_damage const


# Crit Damage
execute if score .crit_damage const matches 1.. run scoreboard players set .crit_damage const 3
scoreboard players operation .damage const += .crit_damage const

# Multiply
scoreboard players operation .damage const *= .2 const

execute store result storage minecraft:arrow store.damage int 1 run scoreboard players get .damage const
execute if data entity @s item.components.minecraft:potion_contents.potion run scoreboard players set .istipped const 1
execute if data entity @s item.components.minecraft:potion_contents.potion run data modify storage minecraft:arrow store.potion set from entity @s item.components.minecraft:potion_contents.potion
execute as @s run function custom_items:arrow/ender/fire

execute at @s run playsound minecraft:entity.player.teleport master @a ~ ~ ~ 1 2 0
execute store result storage minecraft:arrow store.id int 1 run scoreboard players get @s id
function custom_items:arrow/remove_storage with storage minecraft:arrow store
kill @s
tag @a remove arrow_owner
tag @s remove find