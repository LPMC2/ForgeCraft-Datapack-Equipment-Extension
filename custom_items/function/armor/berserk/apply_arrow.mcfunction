scoreboard players set .berserk_armor_kill_cap const 3
scoreboard players operation .berserk_armor_kill_cap const *= @p[tag=arrow_owner] berserk_armor_count
scoreboard players operation .berserk_armor_kill const = @p[tag=arrow_owner] berserk_armor_kill_count
execute if score .berserk_armor_kill const > .berserk_armor_kill_cap const run scoreboard players operation .berserk_armor_kill const = .berserk_armor_kill_cap const
execute store result score .arrow_damage const run data get entity @s damage
scoreboard players operation .arrow_damage const += .berserk_armor_kill const
execute store result storage minecraft:arrow store.damage int 1 run scoreboard players get .arrow_damage const
execute as @s run function custom_items:armor/berserk/apply_arrow_damage with storage minecraft:arrow store