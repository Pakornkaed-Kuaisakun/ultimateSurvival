# @s = หมูตัวแทนตัวใหม่ (mm.just_spawned)

# ผูก armor stand ตัวเก่าของกลุ่ม เข้ากับตัวเอง
execute store result storage mob_merge:temp ox int 1 run data get entity @e[type=pig,tag=!mm.just_spawned,limit=1,sort=nearest,distance=..1] data.mm_stand[0]
execute store result storage mob_merge:temp oy int 1 run data get entity @e[type=pig,tag=!mm.just_spawned,limit=1,sort=nearest,distance=..1] data.mm_stand[1]
execute store result storage mob_merge:temp oz int 1 run data get entity @e[type=pig,tag=!mm.just_spawned,limit=1,sort=nearest,distance=..1] data.mm_stand[2]
execute store result storage mob_merge:temp ow int 1 run data get entity @e[type=pig,tag=!mm.just_spawned,limit=1,sort=nearest,distance=..1] data.mm_stand[3]
function mob_stacker:mob_stacker/eject_relink_stand with storage mob_merge:temp

# สั่งอัปเดตป้ายชื่อบนหัว Armor Stand เดิมให้แสดงแต้มล่าสุด
function mob_stacker:mob_stacker/update_name

# ลบแท็กชั่วคราวออกเพื่อให้ระบบเข้าสู่โหมดทำงานปกติในติ๊กถัดไป
tag @s remove mm.just_spawned