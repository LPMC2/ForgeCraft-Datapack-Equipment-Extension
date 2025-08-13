## Call this on entities which launch the raycast
kill @s[type=#entity_hit_matching:arrow]
scoreboard players set .distance const 0
# Tag prevents current caster from being detected
tag @n[tag=arrow_owner] add raycast
# Anchor to the eyes and position with vector coordinates (Remove if not running from eyes of entity)
execute at @n[tag=arrow_owner] anchored eyes positioned as @s run function custom_items:arrow/guardian/raycast
# Remove the raycasting tag after raycast completion to prepare fo the next player
tag @e[tag=ray_hit] remove ray_hit
tag @n[tag=arrow_owner] remove raycast
