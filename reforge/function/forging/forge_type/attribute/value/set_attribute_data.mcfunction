$data modify storage minecraft:attribute list.$(index).id set value "clone_attribute_$(uuid)"
$data modify storage minecraft:attribute list.$(index).amount set value $(amount)
$data modify storage minecraft:attribute list.$(index).operation set value "add_multiplied_total"