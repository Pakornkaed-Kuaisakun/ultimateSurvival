# @s = ตัวแม่

# 1. บวก count ของลูกเข้าแม่
scoreboard players operation @s mob_merge.count += #child_score mob_merge.count

# 2. sync count ไปยัง armor stand ของแม่
execute store result storage mob_merge:temp ox int 1 run data get entity @s data.mm_stand[0]
execute store result storage mob_merge:temp oy int 1 run data get entity @s data.mm_stand[1]
execute store result storage mob_merge:temp oz int 1 run data get entity @s data.mm_stand[2]
execute store result storage mob_merge:temp ow int 1 run data get entity @s data.mm_stand[3]
function mob_stacker:mob_stacker/sync_stand_count with storage mob_merge:temp

# 3. อัปเดตชื่อบน armor stand ของแม่
execute as @s run function mob_stacker:mob_stacker/update_name

# # 4. kill armor stand ของลูกก่อน แล้วค่อย kill ลูก
execute at @s as @e[tag=mm.source,distance=..2,limit=1] run function mob_stacker:mob_stacker/kill_stand_and_source

# 5. reset #child_score
scoreboard players set #child_score mob_merge.count 0
