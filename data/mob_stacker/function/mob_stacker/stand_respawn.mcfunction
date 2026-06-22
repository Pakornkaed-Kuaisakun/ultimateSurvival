# armor stand spawn pig ใหม่ด้วย count-1 แล้วผูก UUID ใหม่

# คำนวณ count ใหม่ = count - 1
scoreboard players operation #spawn_score mob_merge.count = @s mob_merge.count
scoreboard players remove #spawn_score mob_merge.count 1

# summon pig ใหม่ (HurtTime:9s กันโดน splash damage)
summon pig ~ ~ ~ {Tags:["can_merge","mm.checked"],HurtTime:9s,InLove:0}

# ผูก pig ใหม่กับ armor stand นี้
data modify entity @e[type=pig,tag=can_merge,tag=mm.checked,distance=..1,limit=1,sort=nearest] data.mm_stand set from entity @s UUID
data modify entity @s data.mm_owner set from entity @e[type=pig,tag=can_merge,tag=mm.checked,distance=..1,limit=1,sort=nearest] UUID

# ยัด count ให้ pig ใหม่
scoreboard players operation @e[type=pig,tag=can_merge,tag=mm.checked,distance=..1,limit=1,sort=nearest] mob_merge.count = #spawn_score mob_merge.count
scoreboard players operation @s mob_merge.count = #spawn_score mob_merge.count

# อัปเดตชื่อบน armor stand
execute as @e[type=pig,tag=can_merge,tag=mm.checked,distance=..1,limit=1,sort=nearest] run function mob_stacker:mob_stacker/update_name
