# pig ตัวนี้มีเงื่อนไขพิเศษ (เช่น โดนใส่ Nametag) -> แยกออกจาก group

# 1. ปลดแท็ก can_merge ออกจากตัวเก่าทันที เพื่อตัดมันออกจากระบบสแต็กในติ๊กนี้
tag @s remove can_merge

# 2. จำลองการคำนวณแต้มกลุ่มใหม่: เอาคะแนนเดิมตั้ง (เช่น 5) แล้วหักออก 1 สำหรับตัวแยก (เหลือ 4)
scoreboard players operation #spawn_score mob_merge.count = @s mob_merge.count
scoreboard players remove #spawn_score mob_merge.count 1

# =========================================================================
# [กรณีที่ A]: ก่อนหน้านี้มี 2 ตัวพอดี (หักแล้วเหลือสมาชิกในกลุ่มหลักแค่ 1 ตัว) -> สลายกลุ่ม
# =========================================================================
execute if score #spawn_score mob_merge.count matches 1 run summon pig ~ ~ ~ {Tags:["can_merge","mm.checked","mm.ejected_normal"],HurtTime:9s,InLove:0}
scoreboard players set @e[type=pig,tag=mm.ejected_normal] mob_merge.count 1
tag @e[type=pig,tag=mm.ejected_normal] remove mm.ejected_normal

# =========================================================================
# [กรณีที่ B]: ก่อนหน้านี้มี >= 3 ตัว (หักแล้วในกลุ่มหลักยังเหลือสมาชิกค้างอยู่ >= 2 ตัว)
# =========================================================================
execute if score #spawn_score mob_merge.count matches 2.. run return run function mob_stacker:mob_stacker/eject_spawn_replacement



# ดึง UUID สั่งทำลาย Armor Stand ของกลุ่มทิ้ง (เพราะกลุ่มแตกหมดแล้ว)
execute store result storage mob_merge:temp ox int 1 run data get entity @s data.mm_stand[0]
execute store result storage mob_merge:temp oy int 1 run data get entity @s data.mm_stand[1]
execute store result storage mob_merge:temp oz int 1 run data get entity @s data.mm_stand[2]
execute store result storage mob_merge:temp ow int 1 run data get entity @s data.mm_stand[3]
function mob_stacker:mob_stacker/eject_kill_stand with storage mob_merge:temp

# รีเซ็ตตัวเก่าให้กลายเป็นหมูธรรมดาอย่างเด็ดขาด
scoreboard players set @s mob_merge.count 1
data remove entity @s data.mm_stand