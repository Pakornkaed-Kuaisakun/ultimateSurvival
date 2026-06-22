tag @s add mm.checked
execute if data entity @s CustomName run return 1
execute if predicate mob_stacker:mob_stacker/no_merge_condition run return 1
tag @s add can_merge
scoreboard players set @s mob_merge.count 1

# summon armor stand แล้วให้มัน tag ตัวเองชั่วคราวเพื่อหาได้
summon armor_stand ~ ~0.7 ~ {Invisible:1b,Small:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,Tags:["mm.stand","mm.stand_new"]}

# เก็บ UUID ของ armor stand ใหม่ไว้ใน NBT ของ pig
data modify entity @s data.mm_stand set from entity @e[tag=mm.stand_new,limit=1,sort=nearest,distance=..1] UUID

# ให้ armor stand เก็บ UUID ของ pig (เจ้าของ) ไว้ด้วย
data modify entity @e[tag=mm.stand_new,limit=1,sort=nearest,distance=..1] data.mm_owner set from entity @s UUID

# ลบ tag ชั่วคราวออก
tag @e[tag=mm.stand_new] remove mm.stand_new
