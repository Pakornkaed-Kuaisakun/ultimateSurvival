# @s = pig ลูก (mm.source)
# kill armor stand ของตัวเองก่อน
execute if data entity @s data.mm_stand run function mob_stacker:mob_stacker/kill_own_stand

# kill ตัวเอง
tp @s ~ -500 ~
kill @s
