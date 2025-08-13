#execute if entity @s[advancements={entity_hit_matching:on_hurt={target=true}}] run function entity_hit_matching:find_entity1

execute if entity @s run function entity_hit_matching:find_entity1
advancement revoke @s only entity_hit_matching:on_hurt