# 1. เสกหมูตัวใหม่ขึ้นมารับช่วงกลุ่มหลัก พร้อมติดแท็กระบุตัวเจาะจง 'mm.new_leader'
execute as @s if score @s mob_merge.cd matches 0 unless data entity @s CustomName at @s run summon pig ~ ~ ~ {Tags:["can_merge","mm.checked","mm.new_leader"],HurtTime:9s,InLove:0}
# execute as @e[type=pig,tag=!mm.new_leader] if score @s mob_merge.cd matches 0 run kill @s

# 2. ยัดคะแนนกลุ่มที่คำนวณหักลบแล้ว (#spawn_score) ให้หมูตัวใหม่ผ่านแท็กโดยตรง
scoreboard players operation @e[type=pig,tag=mm.new_leader] mob_merge.count = #spawn_score mob_merge.count

# 3. เคลียร์คะแนนและลบ NBT ของกลุ่มออกจากตัวเก่า (@s) ให้ขาดสะบั้นตั้งแต่บรรทัดนี้!
scoreboard players set @s mob_merge.count 1
execute store result storage mob_merge:temp ox int 1 run data get entity @s data.mm_stand[0]
execute store result storage mob_merge:temp oy int 1 run data get entity @s data.mm_stand[1]
execute store result storage mob_merge:temp oz int 1 run data get entity @s data.mm_stand[2]
execute store result storage mob_merge:temp ow int 1 run data get entity @s data.mm_stand[3]
data remove entity @s data.mm_stand

# 4. ส่งค่า Storage ไปให้ไฟล์ Macro ทำการเปลี่ยนชื่อเจ้าของ Armor Stand (ซึ่งตอนนี้จะชี้ไปที่ mm.new_leader ได้อย่างแม่นยำ)
function mob_stacker:mob_stacker/eject_relink_stand with storage mob_merge:temp

# 5. สั่งอัปเดตป้ายชื่อล่าสุดจากตัวหมูตัวใหม่
execute as @e[type=pig,tag=mm.new_leader] run function mob_stacker:mob_stacker/update_name

# 6. ปลดแท็กชั่วคราวออกจากหมูตัวใหม่ เป็นอันเสร็จสิ้นกระบวนการ
tag @e[type=pig,tag=mm.new_leader] remove mm.new_leader