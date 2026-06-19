function compass_utility:compass_utility/event/deactive_radar
advancement revoke @s only compass_utility:compass_utility/active/coord_act
execute if entity @s[advancements={compass_utility:compass_utility/active/measure_mode_act=true}] run tellraw @s {"text":"Show Measure Deactivated!","color":"red"}
execute if entity @s[advancements={compass_utility:compass_utility/active/measure_mode_act=false}] run tellraw @s {"text":"Show Coords deactivated!","color":"red"}
playsound entity.enderman.teleport master @s ~ ~ ~ 2.5 .5 1
execute if entity @s[advancements={compass_utility:compass_utility/active/measure_mode_act=true}] run advancement revoke @s only compass_utility:compass_utility/active/measure_mode_act
tag @s remove mwt.receive.radar
