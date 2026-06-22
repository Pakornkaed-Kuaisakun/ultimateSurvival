# pig เจ้าของตายแล้ว — ดึง count จาก armor stand แล้วจัดการ
# armor stand เก็บ count ใน score ของตัวเอง (copy มาจาก pig ตอน update_name)

# ถ้า count > 1: spawn pig ใหม่รับช่วง
execute if score @s mob_merge.count matches 2.. run function mob_stacker:mob_stacker/stand_respawn

# ถ้า count = 1: pig กลุ่มนี้หมดแล้ว ลบ armor stand ทิ้ง
execute if score @s mob_merge.count matches ..1 run kill @s
