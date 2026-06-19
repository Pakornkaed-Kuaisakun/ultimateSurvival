function compass_utility:compass_utility/radar_save/get_compass
data remove block ~ ~ ~ Items[0].components."minecraft:lore"
execute if predicate helper:data_library/dimension/overworld run data remove block ~ ~ ~ Items[0].components."minecraft:custom_data".mwt.ow
execute if predicate helper:data_library/dimension/nether run data remove block ~ ~ ~ Items[0].components."minecraft:custom_data".mwt.nt
execute if predicate helper:data_library/dimension/the_end run data remove block ~ ~ ~ Items[0].components."minecraft:custom_data".mwt.te
execute if predicate helper:data_library/dimension/overworld run data remove block ~ ~ ~ Items[0].components."minecraft:custom_data".mwt.RadarOverworldSave
execute if predicate helper:data_library/dimension/nether run data remove block ~ ~ ~ Items[0].components."minecraft:custom_data".mwt.RadarNetherSave
execute if predicate helper:data_library/dimension/the_end run data remove block ~ ~ ~ Items[0].components."minecraft:custom_data".mwt.RadarTheendSave
execute if data block ~ ~ ~ Items[0].components."minecraft:custom_data".mwt unless data block ~ ~ ~ Items[0].components."minecraft:custom_data".mwt.ow unless data block ~ ~ ~ Items[0].components."minecraft:custom_data".mwt.nt unless data block ~ ~ ~ Items[0].components."minecraft:custom_data".mwt.te run data remove block ~ ~ ~ Items[0].components."minecraft:custom_data".mwt
function compass_utility:compass_utility/radar_save/save_done
advancement revoke @s only compass_utility:compass_utility/active/radar_act
scoreboard players set @s mwt.swap.sec 0