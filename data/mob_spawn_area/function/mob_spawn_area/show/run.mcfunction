execute as @a[tag=!global.ignore,tag=!global.ignore.gui,predicate=helper:data_library/mob_spawn_area_act] at @s run function mob_spawn_area:mob_spawn_area/show/check

schedule function mob_spawn_area:mob_spawn_area/show/run 1.5s