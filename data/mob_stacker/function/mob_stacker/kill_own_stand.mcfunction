execute store result storage mob_merge:temp ox int 1 run data get entity @s data.mm_stand[0]
execute store result storage mob_merge:temp oy int 1 run data get entity @s data.mm_stand[1]
execute store result storage mob_merge:temp oz int 1 run data get entity @s data.mm_stand[2]
execute store result storage mob_merge:temp ow int 1 run data get entity @s data.mm_stand[3]
function mob_stacker:mob_stacker/kill_stand_by_uuid with storage mob_merge:temp
