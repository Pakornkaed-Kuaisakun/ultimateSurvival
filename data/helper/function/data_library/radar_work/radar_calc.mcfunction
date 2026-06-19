execute as @e[type=area_effect_cloud,tag=mwt.radar.ae,limit=1] at @s run function helper:data_library/radar_work/radar_signal
execute store result score @s mwt.rd.pointer as @e[type=area_effect_cloud,tag=mwt.radar.ae,limit=1] run data get entity @s Rotation[0] 1
scoreboard players operation @s mwt.offset.rd = @s mwt.player.rot
scoreboard players operation @s mwt.offset.rd += @s mwt.rd.pointer
execute if score @s mwt.offset.rd matches ..-1 run scoreboard players operation @s mwt.offset.rd += #mwt.radar.op.360 mwt.data
execute if score @s[scores={mwt.offset.rd=..-1}] mwt.rd.pointer matches -180.. run scoreboard players operation @s mwt.offset.rd += #mwt.radar.op.360 mwt.data
execute if score @s mwt.offset.rd matches 360.. run scoreboard players operation @s mwt.offset.rd -= #mwt.radar.op.360 mwt.data
title @s times 0 20 10
execute if score @s mwt.rd.pointer matches 92..178 run function helper:data_library/radar_work/circle_axis_xz/circle92-178
execute if score @s mwt.rd.pointer matches -88..-2 run function helper:data_library/radar_work/circle_axis_xz/circle-88--2
execute if score @s mwt.rd.pointer matches -178..-92 run function helper:data_library/radar_work/circle_axis_xz/circle-178--92
execute if score @s mwt.rd.pointer matches 2..88 run function helper:data_library/radar_work/circle_axis_xz/circle2-88

execute if score @s mwt.rd.pointer matches -1..1 run function helper:data_library/radar_work/direct_axis_xz/direct1-1
execute if score @s mwt.rd.pointer matches 89..91 run function helper:data_library/radar_work/direct_axis_xz/direct89-91
execute if score @s mwt.rd.pointer matches -180..-179 run function helper:data_library/radar_work/direct_axis_xz/direct1-1
execute if score @s mwt.rd.pointer matches 179 run function helper:data_library/radar_work/direct_axis_xz/direct1-1
execute if score @s mwt.rd.pointer matches -91..-89 run function helper:data_library/radar_work/direct_axis_xz/direct89-91

title @s subtitle [{"text":"⎝","color":"light_purple","bold":true},{"text":"▃▃▃▃▃▃▃▃▃▃▃╤▃▃▃▃▃▃▃▃▃▃▃","color":"green"},{"text":"⎠"}]