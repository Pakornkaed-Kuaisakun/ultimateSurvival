# กัน pig ที่มีเงื่อนไขพิเศษออก — ไม่ควรถึงจุดนี้ถ้า eject_check ทำงานถูก
# แต่ใส่ guard ไว้เป็น safety net
# execute if score @s mob_merge.cd matches 1.. run return 1
execute if data entity @s CustomName run return 1
execute if predicate mob_stacker:mob_stacker/no_merge_condition run return 1
# execute if data entity @s SaddleItem run return 1

tag @s add mm.source
scoreboard players operation #child_score mob_merge.count = @s mob_merge.count
execute at @s as @e[tag=can_merge,tag=!mm.source,distance=0.1..2,limit=1,sort=nearest] run function mob_stacker:mob_stacker/merge_process
tag @s remove mm.source
