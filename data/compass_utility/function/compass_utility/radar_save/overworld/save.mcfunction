function compass_utility:compass_utility/radar_save/get_compass
data modify block ~ ~ ~ Items[0].components."minecraft:custom_data".mwt.ow.Pos set from entity @s Pos
data modify block ~ ~ ~ Items[0].components."minecraft:custom_data".mwt.ow.PosX set from entity @s Pos[0]
data modify block ~ ~ ~ Items[0].components."minecraft:custom_data".mwt.ow.PosZ set from entity @s Pos[2]
data modify block ~ ~ ~ Items[0].components."minecraft:custom_data".mwt.RadarOverworldSave set value 1
function compass_utility:compass_utility/radar_save/save_done