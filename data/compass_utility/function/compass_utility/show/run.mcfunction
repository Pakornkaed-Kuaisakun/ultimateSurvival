execute if entity @s[advancements={compass_utility:compass_utility/active/measure_mode_act=false}] run function compass_utility:compass_utility/show/coord_radar
execute if predicate compass_utility:compass_utility/deactive run function compass_utility:compass_utility/event/deactive
execute if score @s[advancements={compass_utility:compass_utility/active/measure_mode_act=true}] mwt.leave.game matches 1 run advancement revoke @s only compass_utility:compass_utility/active/measure_mode_act
execute if score @s mwt.leave.game matches 1.. run scoreboard players reset @s mwt.leave.game
execute unless predicate compass_utility:compass_utility/mainhand run advancement revoke @s only compass_utility:compass_utility/active/measure_mode_act
