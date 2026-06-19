tag @s add mwt.receive.radar
data modify storage mwt:name.radar name set from entity @s SelectedItem.components."minecraft:custom_name"

function helper:data_library/radar_work/get_rotate_summon

execute as @e[type=minecraft:area_effect_cloud,tag=mwt.radar.ae,limit=1] run function compass_utility:compass_utility/radar/radar_get_position
function helper:data_library/radar_work/radar_calc
tag @s remove mwt.receive.radar
#Made by EstEarth202 Give advice & consult by Boomber360
