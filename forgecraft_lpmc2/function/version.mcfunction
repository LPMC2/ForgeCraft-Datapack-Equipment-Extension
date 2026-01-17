execute if data storage forgecraft:data version.previous store result score .pre_forgecraft_version const run data get storage forgecraft:data version.previous
execute if data storage forgecraft:data version.current store result score .forgecraft_version const run data get storage forgecraft:data version.current
execute store result storage forgecraft:data version.previous int 1 run scoreboard players operation .pre_forgecraft_version const = .forgecraft_version const
execute store result storage forgecraft:data version.current int 1 run scoreboard players set .forgecraft_version const 180
execute unless score .pre_forgecraft_version const = .forgecraft_version const run function forgecraft_lpmc2:version/detection