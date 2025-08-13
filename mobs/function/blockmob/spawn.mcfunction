scoreboard players add .global_mobid id 1
execute at @s run summon text_display ~ ~ ~ {billboard:"center",Tags:["block_init","blockmob_text","blockmob_tag"]}
$execute at @s run summon item_display ~ ~ ~ {billboard:"vertical",Tags:["block_init","blockmob_display","blockmob_tag"],item:{id:"$(item)",count:1}}
$execute at @s run summon magma_cube ~ ~ ~ {PersistenceRequired:1b,CustomName:{"color":"white","italic":false,"text":"$(item)"},CustomNameVisible:0b,DeathLootTable:"",Silent:1b,CanPickUpLoot:0b,AbsorptionAmount:$(health)f,Size:0,active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:19999980,show_particles:0b,show_icon:0b,ambient:1b}],Health:50f,Tags:["block_init","block_mob","blockmob_tag","absorption_main"],attributes:[{id:"attack_damage",base:$(damage)},{id:"scale",base:1.9},{id:"max_absorption",base:10000},{id:"max_health",base:50}]}
scoreboard players operation @e[tag=block_init] id = .global_mobid id
$scoreboard players set @e[tag=block_init,tag=block_mob,limit=1] init_health $(health)
attribute @e[tag=block_init,tag=block_mob,limit=1] minecraft:jump_strength base set 0.75
attribute @e[tag=block_init,tag=block_mob,limit=1] minecraft:movement_speed base set 1
$scoreboard players set @e[tag=block_init,tag=block_mob,limit=1] damage $(damage)
execute at @s run playsound minecraft:block.trial_spawner.spawn_mob master @a ~ ~ ~ 1 0.75 0
execute at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0.05 20
execute store result score @e[tag=block_init,tag=blockmob_display,limit=1] drop_count run data get entity @s Item.count
data modify entity @e[tag=block_init,tag=blockmob_display,limit=1] item.components set from entity @s Item.components
effect give @e[tag=block_init, tag=block_mob] invisibility infinite 0 true
tag @e[tag=block_init,tag=block_mob] add projectile_ignore
tag @e[tag=block_init] remove block_init
particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0.5 0.5 0.5 0 100

kill @s