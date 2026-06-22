function mob_spawn_area:mob_spawn_area/event/get_light_check
execute if score @s mwt.get.block matches 0 run particle end_rod ~ ~ ~ 0 -1 0 .01 0 normal