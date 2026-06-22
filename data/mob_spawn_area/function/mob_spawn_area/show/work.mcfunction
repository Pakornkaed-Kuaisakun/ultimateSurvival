execute if predicate helper:data_library/weather/clear run function mob_spawn_area:mob_spawn_area/weather/clr
execute if predicate helper:data_library/weather/rain run function mob_spawn_area:mob_spawn_area/weather/rain
execute if predicate helper:data_library/weather/storm run function mob_spawn_area:mob_spawn_area/weather/storm

scoreboard players set #mwt.move_left mwt.get.block 5

execute at @s anchored feet positioned ^-3.5 ^2 ^3 run function mob_spawn_area:mob_spawn_area/particle_pointer_check/move_left