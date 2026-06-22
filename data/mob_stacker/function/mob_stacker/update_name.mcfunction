# 1. sync count จาก pig ไปยัง armor stand (via UUID stored in pig NBT)
execute store result storage mob_merge:temp ox int 1 run data get entity @s data.mm_stand[0]
execute store result storage mob_merge:temp oy int 1 run data get entity @s data.mm_stand[1]
execute store result storage mob_merge:temp oz int 1 run data get entity @s data.mm_stand[2]
execute store result storage mob_merge:temp ow int 1 run data get entity @s data.mm_stand[3]
function mob_stacker:mob_stacker/sync_stand_count with storage mob_merge:temp

# 2. สั่ง armor stand อัปเดตชื่อตัวเองจาก score ของมัน
execute as @e[tag=mm.stand,scores={mob_merge.count=2..}] if data entity @s data.mm_owner run function mob_stacker:mob_stacker/stand_set_name

# 3. ถ้า count=1 ซ่อนชื่อ
execute as @e[tag=mm.stand,scores={mob_merge.count=..1}] run data modify entity @s CustomNameVisible set value 0b
