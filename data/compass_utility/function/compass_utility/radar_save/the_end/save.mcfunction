function compass_utility:compass_utility/radar_save/get_compass
data modify block ~ ~ ~ Items[0].components."minecraft:custom_data".mwt.te.Pos set from entity @s Pos
data modify block ~ ~ ~ Items[0].components."minecraft:custom_data".mwt.te.PosX set from entity @s Pos[0]
data modify block ~ ~ ~ Items[0].components."minecraft:custom_data".mwt.te.PosZ set from entity @s Pos[2]
data modify block ~ ~ ~ Items[0].components."minecraft:custom_data".mwt.RadarTheendSave set value 1
function compass_utility:compass_utility/radar_save/save_done