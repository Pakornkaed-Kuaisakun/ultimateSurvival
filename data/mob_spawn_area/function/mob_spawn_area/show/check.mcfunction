execute if predicate mob_spawn_area:mob_spawn_area/ignore_biome run title @s actionbar ["",{"text":"(i) ","bold":true,"color":"yellow"},{"text":"Monster cannot spawn in this area ","bold":true,"color":"gold"},{"text":"✖","color":"red"}]

execute unless predicate mob_spawn_area:mob_spawn_area/ignore_biome run function mob_spawn_area:mob_spawn_area/show/work

execute unless predicate mob_spawn_area:mob_spawn_area/hold_light_item run function mob_spawn_area:mob_spawn_area/event/deactive