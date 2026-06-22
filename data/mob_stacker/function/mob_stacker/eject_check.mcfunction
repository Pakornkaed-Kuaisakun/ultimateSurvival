# รัน AS pig ที่ merge อยู่แล้ว (tag=can_merge, count>=2)
# ถ้ามีเงื่อนไขพิเศษ → แยกตัวออกจาก group

execute if data entity @s CustomName run function mob_stacker:mob_stacker/eject_self
execute if score @s mob_merge.cd matches 1.. run function mob_stacker:mob_stacker/eject_self
execute as @s if predicate mob_stacker:mob_stacker/no_merge_condition run function mob_stacker:mob_stacker/eject_self
# execute if entity @s[nbt={IsBaby:1b}] run function mob_stacker:mob_stacker/eject_self
# execute if data entity @s SaddleItem run function mob_stacker:mob_stacker/eject_self
# execute as @s[nbt={InLove:}]