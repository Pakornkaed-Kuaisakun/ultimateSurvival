# macro: หา pig เจ้าของด้วย UUID ที่เก็บไว้
# ดึง UUID ของเจ้าของออกมาก่อน
execute store result storage mob_merge:temp ox int 1 run data get entity @s data.mm_owner[0]
execute store result storage mob_merge:temp oy int 1 run data get entity @s data.mm_owner[1]
execute store result storage mob_merge:temp oz int 1 run data get entity @s data.mm_owner[2]
execute store result storage mob_merge:temp ow int 1 run data get entity @s data.mm_owner[3]
function mob_stacker:mob_stacker/stand_find_owner with storage mob_merge:temp
