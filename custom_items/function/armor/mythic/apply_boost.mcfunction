$execute if data entity @s equipment.$(type).components.minecraft:trim{pattern:"minecraft:sentry"} run effect give @s minecraft:resistance infinite $(power) false
$execute if data entity @s equipment.$(type).components.minecraft:trim{pattern:"minecraft:vex"} run attribute @s minecraft:attack_damage modifier add mythic_$(type) 0.1 add_multiplied_total
$execute if data entity @s equipment.$(type).components.minecraft:trim{pattern:"minecraft:wild"} run effect give @s minecraft:health_boost infinite $(power) false
$execute if data entity @s equipment.$(type).components.minecraft:trim{pattern:"minecraft:coast"} run attribute @s minecraft:movement_speed modifier add mythic_$(type) 0.2 add_multiplied_total
$execute if data entity @s equipment.$(type).components.minecraft:trim{pattern:"minecraft:dune"} run attribute @s minecraft:jump_strength modifier add mythic_$(type) 0.25 add_multiplied_total
$execute if data entity @s equipment.$(type).components.minecraft:trim{pattern:"minecraft:ward"} run attribute @s minecraft:movement_efficiency modifier add mythic_$(type) 0.2 add_value
$execute if data entity @s equipment.$(type).components.minecraft:trim{pattern:"minecraft:silence"} run attribute @s minecraft:sneaking_speed modifier add mythic_$(type) 0.3 add_multiplied_total
$execute if data entity @s equipment.$(type).components.minecraft:trim{pattern:"minecraft:tide"} run effect give @s minecraft:water_breathing infinite 0 false
$execute if data entity @s equipment.$(type).components.minecraft:trim{pattern:"minecraft:snout"} run attribute @s minecraft:attack_speed modifier add mythic_$(type) 0.15 add_multiplied_total
$execute if data entity @s equipment.$(type).components.minecraft:trim{pattern:"minecraft:rib"} run effect give @s minecraft:fire_resistance infinite 0 false
$execute if data entity @s equipment.$(type).components.minecraft:trim{pattern:"minecraft:eye"} run effect give @s minecraft:regeneration infinite 0 false
$execute if data entity @s equipment.$(type).components.minecraft:trim{pattern:"minecraft:spire"} run effect give @s minecraft:strength infinite $(power) false
$execute if data entity @s equipment.$(type).components.minecraft:trim{pattern:"minecraft:wayfinder"} run attribute @s minecraft:mining_efficiency modifier add mythic_$(type) 0.25 add_multiplied_total
$execute if data entity @s equipment.$(type).components.minecraft:trim{pattern:"minecraft:raiser"} run attribute @s minecraft:armor_toughness modifier add mythic_$(type) 0.5 add_multiplied_total
$execute if data entity @s equipment.$(type).components.minecraft:trim{pattern:"minecraft:shaper"} run attribute @s minecraft:attack_knockback modifier add mythic_$(type) 0.5 add_multiplied_total
$execute if data entity @s equipment.$(type).components.minecraft:trim{pattern:"minecraft:host"} run attribute @s minecraft:step_height modifier add mythic_$(type) 0.5 add_value
$execute if data entity @s equipment.$(type).components.minecraft:trim{pattern:"minecraft:flow"} run effect give @s minecraft:trial_omen infinite 0 false
$execute if data entity @s equipment.$(type).components.minecraft:trim{pattern:"minecraft:bolt"} run attribute @s minecraft:safe_fall_distance modifier add mythic_$(type) 0.5 add_multiplied_total
data modify storage minecraft:text store.text set value "None!"
$data modify storage minecraft:text store.type set value "$(type)"
$execute if data entity @s equipment.$(type).components.minecraft:trim{pattern:"minecraft:sentry"} run data modify storage minecraft:text store.text set value "Applied effect boost for $(type): Gain resistance $(power)"
$execute if data entity @s equipment.$(type).components.minecraft:trim{pattern:"minecraft:vex"} run data modify storage minecraft:text store.text set value "Applied stat boost for $(type): +10% Attack Damage"
$execute if data entity @s equipment.$(type).components.minecraft:trim{pattern:"minecraft:wild"} run data modify storage minecraft:text store.text set value "Applied effect boost for $(type): Gain Health Boost $(power)"
$execute if data entity @s equipment.$(type).components.minecraft:trim{pattern:"minecraft:coast"} run data modify storage minecraft:text store.text set value "Applied stat boost for $(type): +20% Movement Speed"
$execute if data entity @s equipment.$(type).components.minecraft:trim{pattern:"minecraft:dune"} run data modify storage minecraft:text store.text set value "Applied stat boost for $(type): +25% Jump Strength"
$execute if data entity @s equipment.$(type).components.minecraft:trim{pattern:"minecraft:ward"} run data modify storage minecraft:text store.text set value "Applied stat boost for $(type): +20% Movement Efficiency"
$execute if data entity @s equipment.$(type).components.minecraft:trim{pattern:"minecraft:silence"} run data modify storage minecraft:text store.text set value "Applied stat boost for $(type): +30% Sneaking Speed"
$execute if data entity @s equipment.$(type).components.minecraft:trim{pattern:"minecraft:tide"} run data modify storage minecraft:text store.text set value "Applied stat boost for $(type): Gain Water Breathing"
$execute if data entity @s equipment.$(type).components.minecraft:trim{pattern:"minecraft:snout"} run data modify storage minecraft:text store.text set value "Applied stat boost for $(type): +15% Attack Speed"
$execute if data entity @s equipment.$(type).components.minecraft:trim{pattern:"minecraft:rib"} run data modify storage minecraft:text store.text set value "Applied stat boost for $(type): Gain Fire Resistance"
$execute if data entity @s equipment.$(type).components.minecraft:trim{pattern:"minecraft:eye"} run data modify storage minecraft:text store.text set value "Applied effect boost for $(type): Gain Regeneration I"
$execute if data entity @s equipment.$(type).components.minecraft:trim{pattern:"minecraft:spire"} run data modify storage minecraft:text store.text set value "Applied effect boost for $(type): Gain Strength $(power)"
$execute if data entity @s equipment.$(type).components.minecraft:trim{pattern:"minecraft:wayfinder"} run data modify storage minecraft:text store.text set value "Applied stat boost for $(type): +25% Mining Efficiency"
$execute if data entity @s equipment.$(type).components.minecraft:trim{pattern:"minecraft:raiser"} run data modify storage minecraft:text store.text set value "Applied stat boost for $(type): +50% Armor Toughness"
$execute if data entity @s equipment.$(type).components.minecraft:trim{pattern:"minecraft:shaper"} run data modify storage minecraft:text store.text set value "Applied stat boost for $(type): +50% Attack Knockback"
$execute if data entity @s equipment.$(type).components.minecraft:trim{pattern:"minecraft:host"} run data modify storage minecraft:text store.text set value "Applied stat boost for $(type): +0.5 Step Height"
$execute if data entity @s equipment.$(type).components.minecraft:trim{pattern:"minecraft:flow"} run data modify storage minecraft:text store.text set value "Applied effect boost for $(type): Gain Trial Omen"
$execute if data entity @s equipment.$(type).components.minecraft:trim{pattern:"minecraft:bolt"} run data modify storage minecraft:text store.text set value "Applied stat boost for $(type): +50% Safe Fall Distance"

execute as @s run function custom_items:armor/mythic/display_boost_text with storage minecraft:text store