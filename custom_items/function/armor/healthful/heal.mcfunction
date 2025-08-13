execute store result score .max_health const run attribute @s minecraft:max_health get
scoreboard players operation .store_healamount const = .heal_amount const
scoreboard players operation .result const = .max_health const
scoreboard players operation .result const *= .store_healamount const
scoreboard players set .100 const 100

scoreboard players operation .result const /= .100 const

scoreboard players operation @s heal = .result const
particle minecraft:heart ~ ~1 ~ 0.5 0.5 0.5 1 10