#execute if entity @s[advancements={entity_hit_matching:on_hit={target=true}}] run function entity_hit_matching:find_entity
execute if entity @s run function entity_hit_matching:find_entity
advancement revoke @s only entity_hit_matching:on_hit
