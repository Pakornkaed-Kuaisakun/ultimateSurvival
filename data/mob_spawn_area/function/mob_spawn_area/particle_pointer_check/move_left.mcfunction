scoreboard players set #mwt.move_up mwt.get.block 4
function mob_spawn_area:mob_spawn_area/particle_pointer_check/move_up
scoreboard players set #mwt.move_down mwt.get.block 4
function mob_spawn_area:mob_spawn_area/particle_pointer_check/move_down
scoreboard players remove #mwt.move_left mwt.get.block 1
execute if score #mwt.move_left mwt.get.block matches 1.. positioned ^2 ^ ^ run function mob_spawn_area:mob_spawn_area/particle_pointer_check/move_left