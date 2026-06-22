# macro: เปลี่ยน mm_owner ของ armor stand ให้ชี้ไปหา pig ตัวแทนตัวใหม่ที่มีแท็กเจาะจง
$data modify entity @e[tag=mm.stand,nbt={UUID:[I;$(ox),$(oy),$(oz),$(ow)]}] data.mm_owner set from entity @e[type=pig,tag=mm.new_leader,limit=1] UUID

# ให้ pig ตัวแทนตัวใหม่ เก็บ UUID ของ armor stand กลุ่มนี้ไว้ด้วย
$data modify entity @e[type=pig,tag=mm.new_leader,limit=1] data.mm_stand set from entity @e[tag=mm.stand,nbt={UUID:[I;$(ox),$(oy),$(oz),$(ow)]}] UUID