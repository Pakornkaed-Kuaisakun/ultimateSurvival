tag @s add mwt.setlore.compass
function compass_utility:compass_utility/radar_save/get_compass
setblock ~ 318 ~ oak_wall_sign[facing=east]
execute if predicate helper:data_library/dimension/overworld run data modify block ~ 318 ~ front_text.messages[0] set value '[{"text":"Overworld.: ","color":"green"},{"score":{"name":"@p[tag=mwt.setlore.compass,limit=1]","objective":"mwt.radar.posx"},"color":"gold"},{"text":", ","color":"gold"},{"score":{"name":"@p[tag=mwt.setlore.compass,limit=1]","objective":"mwt.radar.posz"},"color":"gold"}]'
execute if predicate helper:data_library/dimension/nether run data modify block ~ 318 ~ front_text.messages[0] set value '[{"text":".Nether..: ","color":"red"},{"score":{"name":"@p[tag=mwt.setlore.compass,limit=1]","objective":"mwt.radar.posx"},"color":"gold"},{"text":", ","color":"gold"},{"score":{"name":"@p[tag=mwt.setlore.compass,limit=1]","objective":"mwt.radar.posz"},"color":"gold"}]'
execute if predicate helper:data_library/dimension/the_end run data modify block ~ 318 ~ front_text.messages[0] set value '[{"text":"-The End: ","color":"light_purple"},{"score":{"name":"@p[tag=mwt.setlore.compass,limit=1]","objective":"mwt.radar.posx"},"color":"gold"},{"text":", ","color":"gold"},{"score":{"name":"@p[tag=mwt.setlore.compass,limit=1]","objective":"mwt.radar.posz"},"color":"gold"}]'
data remove block ~ 319 ~ Items[0].components."minecraft:lore"
data remove block ~ 319 ~ Items[0].components."minecraft:custom_data".mwt.Dimension
data modify block ~ 319 ~ Items[0].components."minecraft:lore" append from block ~ 318 ~ front_text.messages[0]
setblock ~ 318 ~ air
execute if predicate helper:data_library/dimension/overworld run data modify block ~ 319 ~ Items[0].components."minecraft:custom_data".mwt.Dimension set value {Dimension:0}
execute if predicate helper:data_library/dimension/nether run data modify block ~ 319 ~ Items[0].components."minecraft:custom_data".mwt.Dimension set value {Dimension:-1}
execute if predicate helper:data_library/dimension/the_end run data modify block ~ 319 ~ Items[0].components."minecraft:custom_data".mwt.Dimension set value {Dimension:1}
function compass_utility:compass_utility/radar_save/send_back
tag @s remove mwt.setlore.compass

#Made by mwtEarth202 Give advice & consult by Boomber360