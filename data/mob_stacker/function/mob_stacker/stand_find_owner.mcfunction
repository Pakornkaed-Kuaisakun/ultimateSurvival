# macro function - หา pig เจ้าของโดย UUID แล้ว tp ตาม
# ถ้าหาไม่เจอ = pig ตายแล้ว → death handling
$execute as @e[type=pig,tag=can_merge,nbt={UUID:[I;$(ox),$(oy),$(oz),$(ow)]}] at @s run tp @e[tag=mm.stand,nbt={data:{mm_owner:[I;$(ox),$(oy),$(oz),$(ow)]}}] ~ ~0.7 ~
$execute unless entity @e[type=pig,tag=can_merge,nbt={UUID:[I;$(ox),$(oy),$(oz),$(ow)]}] run function mob_stacker:mob_stacker/stand_owner_dead with storage mob_merge:temp
