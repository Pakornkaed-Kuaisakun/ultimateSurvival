execute if predicate compass_utility:compass_utility/radar_save/radar_act_false run advancement grant @s only compass_utility:compass_utility/active/radar_act
execute unless score @s mwt.sneak.sec matches 1.. if score @s mwt.swap.sec matches 10.. run function compass_utility:compass_utility/radar_save/the_end/radar
