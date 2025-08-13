scoreboard players set @s rampaging_cd 0
execute if score @s rampaging_attack matches 20.. run return fail
tag @s add rampaging
scoreboard players add @s rampaging_attack 1
execute store result storage minecraft:attack_damage store.value int 1 run scoreboard players get @s rampaging_attack
execute as @s run function custom_items:weapon/rampaging/apply with storage minecraft:attack_damage store
playsound minecraft:entity.evoker_fangs.attack player @a ~ ~ ~ 1 2 0
execute if entity @s[advancements={reforge:rampaging_reforge=false}] if score @s rampaging_attack matches 20.. run advancement grant @s only reforge:rampaging_reforge