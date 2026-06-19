function helper:data_library/lib/get_position
execute unless score @s mwt.sneak.sec matches 1.. unless score @s mwt.swap.sec matches 10.. run function compass_utility:compass_utility/show/coords
execute if predicate compass_utility:compass_utility/mainhand at @s positioned ~ 319 ~ run function compass_utility:compass_utility/radar/sort_save
execute unless predicate compass_utility:compass_utility/mainhand run function compass_utility:compass_utility/event/deactive_radar
