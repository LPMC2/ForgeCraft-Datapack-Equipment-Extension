tag @s add find
scoreboard players set .damage const 0
scoreboard players set .power_damage const 0
scoreboard players set .player_damage const 0
scoreboard players set .crit_damage const 0
scoreboard players set .istipped const 0
scoreboard players set .isspectral const 0
scoreboard players set .isPoison const 0
scoreboard players set .isMagical const 0
scoreboard players set .arrow_potion_id const -1
scoreboard players set .2 const 2
scoreboard players set .3 const 3
execute as @a at @s run function custom_items:arrow/find_players
execute if data entity @s weapon.components.minecraft:custom_data.poison_bow run scoreboard players set .isPoison const 1
execute if data entity @s weapon.components.minecraft:custom_data.magical run scoreboard players set .isMagical const 1
scoreboard players set .damage const 0
execute store result score .power_damage const run data get entity @s weapon.components.minecraft:enchantments.minecraft:power 50
# Fallback
execute if score .power_damage const matches ..0 store result score .power_damage const run data get entity @s weapon.components.minecraft:enchantments.levels.minecraft:power 50

execute store result score .crit_damage const run data get entity @s crit
execute if data entity @s item.components.minecraft:potion_contents run scoreboard players set .istipped const 1
# Power Enchantment Damage
scoreboard players operation .damage const += .power_damage const
execute store result score .player_damage const run attribute @p[tag=arrow_owner] minecraft:attack_damage get 100
# Player Damage
scoreboard players operation .damage const += .player_damage const
# Crit Damage
execute if score .crit_damage const matches 1.. run scoreboard players operation .damage const *= .2 const
# In water damage
execute at @p[tag=arrow_owner] if block ~ ~ ~ minecraft:water run scoreboard players operation .damage const *= .3 const
execute store result storage minecraft:arrow store.damage double 0.01 run scoreboard players get .damage const
# Potion Set
execute as @s run function effects:detect/set_potion_type_from_arrow_temp

execute as @s run function custom_items:arrow/guardian/start_raycast
execute at @s run playsound minecraft:entity.guardian.attack master @a ~ ~ ~ 1 2 0
execute at @s if score .crit_damage const matches 1.. run playsound minecraft:block.conduit.attack.target master @a ~ ~ ~ 0.3 1 1
execute store result storage minecraft:arrow store.id int 1 run scoreboard players get @s id
function custom_items:arrow/remove_storage with storage minecraft:arrow store
kill @s
tag @a remove arrow_owner
tag @s remove find