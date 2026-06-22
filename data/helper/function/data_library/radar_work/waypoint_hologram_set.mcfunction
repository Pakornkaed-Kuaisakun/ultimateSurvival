# 1. วางป้ายโดยใช้โครงสร้าง front_text แบบใหม่ของเวอร์ชันปัจจุบัน
execute unless data entity @s CustomName run setblock ~ 319 ~ minecraft:oak_sign
execute unless data entity @s CustomName run data modify block ~ 319 ~ front_text.messages[0] set value ["",{"nbt":"name","storage":"mwt:name.radar","color":"aqua","interpret":true},{"text":" "},{"score":{"name":"@p[tag=mwt.receive.radar,limit=1]","objective":"mwt.radar.posx"},"color":"gold"},{"text":", "},{"score":{"name":"@p[tag=mwt.receive.radar,limit=1]","objective":"mwt.radar.posz"},"color":"gold"}]

# 2. ดึงค่าจาก Text1.messages[0] (บรรทัดแรกของป้าย) มาใส่ใน CustomName
data modify entity @s CustomName set from block ~ 319 ~ front_text.messages[0]

# 3. เปิดการมองเห็นชื่อ และเคลียร์บล็อกป้ายออก
data modify entity @s CustomNameVisible set value 1b
setblock ~ 319 ~ air

# 4. ตรวจสอบคะแนนเพื่อลบเอนทิตีตามเงื่อนไขเดิม
execute if score @p[tag=mwt.receive.radar,limit=1] mwt.swap.sec matches 14.. run kill @s