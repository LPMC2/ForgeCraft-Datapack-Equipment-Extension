tag @s add entityidset
# Assign a new id to the entity
execute if score $highest entityid matches 999999999.. run scoreboard players set $highest entityid 1
execute store result score @s entityid run scoreboard players add $highest entityid 1

# Get bit 0
scoreboard players operation $temp_entityid.0 const = @s entityid
scoreboard players operation $temp_entityid.0 const %= 2 const
scoreboard players operation @s entityid /= 2 const
# Get bit 1
scoreboard players operation $temp_entityid.1 const = @s entityid
scoreboard players operation $temp_entityid.1 const %= 2 const
scoreboard players operation @s entityid /= 2 const
# Get bit 2
scoreboard players operation $temp_entityid.2 const = @s entityid
scoreboard players operation $temp_entityid.2 const %= 2 const
scoreboard players operation @s entityid /= 2 const
# Get bit 3
scoreboard players operation $temp_entityid.3 const = @s entityid
scoreboard players operation $temp_entityid.3 const %= 2 const
scoreboard players operation @s entityid /= 2 const
# Get bit 4
scoreboard players operation $temp_entityid.4 const = @s entityid
scoreboard players operation $temp_entityid.4 const %= 2 const
scoreboard players operation @s entityid /= 2 const
# Get bit 5
scoreboard players operation $temp_entityid.5 const = @s entityid
scoreboard players operation $temp_entityid.5 const %= 2 const
scoreboard players operation @s entityid /= 2 const
# Get bit 6
scoreboard players operation $temp_entityid.6 const = @s entityid
scoreboard players operation $temp_entityid.6 const %= 2 const
scoreboard players operation @s entityid /= 2 const
# Get bit 7
scoreboard players operation $temp_entityid.7 const = @s entityid
scoreboard players operation $temp_entityid.7 const %= 2 const
scoreboard players operation @s entityid /= 2 const
# Get bit 8
scoreboard players operation $temp_entityid.8 const = @s entityid
scoreboard players operation $temp_entityid.8 const %= 2 const
scoreboard players operation @s entityid /= 2 const
# Get bit 9
scoreboard players operation $temp_entityid.9 const = @s entityid
scoreboard players operation $temp_entityid.9 const %= 2 const
scoreboard players operation @s entityid /= 2 const
# Get bit 10
scoreboard players operation $temp_entityid.10 const = @s entityid
scoreboard players operation $temp_entityid.10 const %= 2 const
scoreboard players operation @s entityid /= 2 const
# Get bit 11
scoreboard players operation $temp_entityid.11 const = @s entityid
scoreboard players operation $temp_entityid.11 const %= 2 const
scoreboard players operation @s entityid /= 2 const
# Get bit 12
scoreboard players operation $temp_entityid.12 const = @s entityid
scoreboard players operation $temp_entityid.12 const %= 2 const
scoreboard players operation @s entityid /= 2 const
# Get bit 13
scoreboard players operation $temp_entityid.13 const = @s entityid
scoreboard players operation $temp_entityid.13 const %= 2 const
scoreboard players operation @s entityid /= 2 const
# Get bit 14
scoreboard players operation $temp_entityid.14 const = @s entityid
scoreboard players operation $temp_entityid.14 const %= 2 const
scoreboard players operation @s entityid /= 2 const
# Get bit 15
scoreboard players operation $temp_entityid.15 const = @s entityid
scoreboard players operation $temp_entityid.15 const %= 2 const
scoreboard players operation @s entityid /= 2 const
# Get bit 16
scoreboard players operation $temp_entityid.16 const = @s entityid
scoreboard players operation $temp_entityid.16 const %= 2 const
scoreboard players operation @s entityid /= 2 const
# Get bit 17
scoreboard players operation $temp_entityid.17 const = @s entityid
scoreboard players operation $temp_entityid.17 const %= 2 const
scoreboard players operation @s entityid /= 2 const
# Get bit 18
scoreboard players operation $temp_entityid.18 const = @s entityid
scoreboard players operation $temp_entityid.18 const %= 2 const
scoreboard players operation @s entityid /= 2 const
# Get bit 19
scoreboard players operation $temp_entityid.19 const = @s entityid
scoreboard players operation $temp_entityid.19 const %= 2 const
scoreboard players operation @s entityid /= 2 const
# Get bit 20
scoreboard players operation $temp_entityid.20 const = @s entityid
scoreboard players operation $temp_entityid.20 const %= 2 const
scoreboard players operation @s entityid /= 2 const
# Get bit 21
scoreboard players operation $temp_entityid.21 const = @s entityid
scoreboard players operation $temp_entityid.21 const %= 2 const
scoreboard players operation @s entityid /= 2 const
# Get bit 22
scoreboard players operation $temp_entityid.22 const = @s entityid
scoreboard players operation $temp_entityid.22 const %= 2 const
scoreboard players operation @s entityid /= 2 const
# Get bit 23
scoreboard players operation $temp_entityid.23 const = @s entityid
scoreboard players operation $temp_entityid.23 const %= 2 const
scoreboard players operation @s entityid /= 2 const
# Get bit 24
scoreboard players operation $temp_entityid.24 const = @s entityid
scoreboard players operation $temp_entityid.24 const %= 2 const
scoreboard players operation @s entityid /= 2 const
# Get bit 25
scoreboard players operation $temp_entityid.25 const = @s entityid
scoreboard players operation $temp_entityid.25 const %= 2 const
scoreboard players operation @s entityid /= 2 const
# Get bit 26
scoreboard players operation $temp_entityid.26 const = @s entityid
scoreboard players operation $temp_entityid.26 const %= 2 const
scoreboard players operation @s entityid /= 2 const
# Get bit 27
scoreboard players operation $temp_entityid.27 const = @s entityid
scoreboard players operation $temp_entityid.27 const %= 2 const
scoreboard players operation @s entityid /= 2 const
# Get bit 28
scoreboard players operation $temp_entityid.28 const = @s entityid
scoreboard players operation $temp_entityid.28 const %= 2 const
scoreboard players operation @s entityid /= 2 const
# Get bit 29
scoreboard players operation $temp_entityid.29 const = @s entityid
scoreboard players operation $temp_entityid.29 const %= 2 const
scoreboard players operation @s entityid /= 2 const
# Get bit 30
scoreboard players operation $temp_entityid.30 const = @s entityid
scoreboard players operation $temp_entityid.30 const %= 2 const
scoreboard players operation @s entityid /= 2 const
# Get sign bit
scoreboard players operation $temp_entityid.31 const = @s entityid
scoreboard players operation $temp_entityid.31 const %= 2 const

scoreboard players operation @s entityid = $highest entityid
function entity_hit_matching:assign_id1