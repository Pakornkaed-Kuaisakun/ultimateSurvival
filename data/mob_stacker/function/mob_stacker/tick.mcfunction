execute as @e[type=pig,tag=can_merge] store result score @s mob_merge.cd run data get entity @s InLove
execute as @e[type=pig,tag=mm.checked] if score @s mob_merge.cd matches 1.. run scoreboard players remove @s mob_merge.cd 1

# 1. ลงทะเบียนหมูที่เกิดใหม่ตามธรรมชาติก่อนเป็นอันดับแรก
execute as @e[type=pig,tag=!mm.checked,tag=!mm.dying] at @s run function mob_stacker:mob_stacker/init

# 2. เช็ก pig merged ที่มีเงื่อนไขพิเศษ → eject ออกจาก group
execute as @e[type=pig,tag=can_merge,scores={mob_merge.count=2..}] at @s run function mob_stacker:mob_stacker/eject_check

# 3. เช็ก pig ที่โดนตี (HurtTime:10s) และมี count >= 2 → heal
execute as @e[type=pig,tag=can_merge,tag=!mm.dying,scores={mob_merge.count=2..}] if data entity @s {HurtTime:10s} run function mob_stacker:mob_stacker/death_check

# 4. armor stand: tp ตาม pig + death detection
execute as @e[tag=mm.stand] at @s run function mob_stacker:mob_stacker/stand_check

# 5. ระบบรวมร่าง และอัปเดตป้ายชื่อ
scoreboard players remove #mm.timer mob_merge.timer 1
execute as @e[tag=can_merge] at @s if score #mm.timer mob_merge.timer matches ..1 run function mob_stacker:mob_stacker/try_merge
execute if score #mm.timer mob_merge.timer matches ..1 run scoreboard players set #mm.timer mob_merge.timer 100
execute as @e[tag=can_merge] run function mob_stacker:mob_stacker/update_name