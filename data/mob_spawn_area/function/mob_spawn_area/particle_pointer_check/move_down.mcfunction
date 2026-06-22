scoreboard players set #mwt.move_forward mwt.get.block 3
function mob_spawn_area:mob_spawn_area/particle_pointer_check/move_forward
scoreboard players remove #mwt.move_down mwt.get.block 1
execute if score #mwt.move_down mwt.get.block matches 1.. positioned ^ ^-1 ^ run function mob_spawn_area:mob_spawn_area/particle_pointer_check/move_down