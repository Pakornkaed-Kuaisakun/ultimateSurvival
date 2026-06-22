execute align xyz positioned ~.5 ~.5 ~.5 run function mob_spawn_area:mob_spawn_area/particle_pointer_check/block_check
scoreboard players remove #mwt.move_forward mwt.get.block 1
execute if score #mwt.move_forward mwt.get.block matches 1.. positioned ^ ^ ^2 run function mob_spawn_area:mob_spawn_area/particle_pointer_check/move_forward