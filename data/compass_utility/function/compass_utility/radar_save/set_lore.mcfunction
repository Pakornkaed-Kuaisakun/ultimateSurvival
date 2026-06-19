tag @s add mwt.setlore.compass
function compass_utility:compass_utility/radar_save/get_compass

scoreboard players operation #current_x mwt.radar.posx = @s mwt.radar.posx
scoreboard players operation #current_z mwt.radar.posz = @s mwt.radar.posz

setblock ~ ~319 ~ minecraft:oak_wall_sign[facing=east]

execute if predicate helper:data_library/dimension/overworld run data modify block ~ ~319 ~ Text1 set value '[{"text":"Overworld.: ","color":"green"},{"score":{"name":"#current_x","objective":"mwt.radar.posx"},"color":"gold"},{"text":", ","color":"gold"},{"score":{"name":"#current_z","objective":"mwt.radar.posz"},"color":"gold"}]'
execute if predicate helper:data_library/dimension/nether run data modify block ~ ~319 ~ Text1 set value '[{"text":".Nether..: ","color":"red"},{"score":{"name":"#current_x","objective":"mwt.radar.posx"},"color":"gold"},{"text":", ","color":"gold"},{"score":{"name":"#current_z","objective":"mwt.radar.posz"},"color":"gold"}]'
execute if predicate helper:data_library/dimension/the_end run data modify block ~ ~319 ~ Text1 set value '[{"text":"-The End: ","color":"light_purple"},{"score":{"name":"#current_x","objective":"mwt.radar.posx"},"color":"gold"},{"text":", ","color":"gold"},{"score":{"name":"#current_z","objective":"mwt.radar.posz"},"color":"gold"}]'

data remove block ~ ~ ~ Items[0].components."minecraft:lore"
data remove block ~ ~ ~ Items[0].components."minecraft:custom_data".mwt.Dimension
data modify block ~ ~ ~ Items[0].components."minecraft:lore" append from block ~ ~319 ~ Text1

setblock ~ ~319 ~ air

execute if predicate helper:data_library/dimension/overworld run data modify block ~ ~ ~ Items[0].components."minecraft:custom_data".mwt.Dimension set value 0
execute if predicate helper:data_library/dimension/nether run data modify block ~ ~ ~ Items[0].components."minecraft:custom_data".mwt.Dimension set value -1
execute if predicate helper:data_library/dimension/the_end run data modify block ~ ~ ~ Items[0].components."minecraft:custom_data".mwt.Dimension set value 1

function compass_utility:compass_utility/radar_save/send_back
tag @s remove mwt.setlore.compass