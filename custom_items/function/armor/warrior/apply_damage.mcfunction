scoreboard players add @s warrior_hit 1
scoreboard players set @s warrior_cd 0
scoreboard players operation .warrior_value const = @s warrior_hit
scoreboard players operation .warrior_value const *= .boost_value const
execute if score .warrior_value const > .warrior_cap const run scoreboard players operation .warrior_value const = .warrior_cap const
function custom_items:armor/warrior/add_digit
execute store result storage minecraft:armor store.value int 1 run scoreboard players get .warrior_value const
execute store result storage minecraft:armor store.digit int 1 run scoreboard players get .warrior_digit const
execute as @s run function custom_items:armor/warrior/apply with storage minecraft:armor store