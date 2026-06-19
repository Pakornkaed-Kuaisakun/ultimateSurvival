execute if score @s mwt.sneak.sec matches 1.. run function compass_utility:compass_utility/radar_save/process_save_clr
execute at @s if predicate helper:data_library/dimension/overworld run function compass_utility:compass_utility/radar_save/overworld/run
execute at @s if predicate helper:data_library/dimension/nether run function compass_utility:compass_utility/radar_save/nether/run
execute at @s if predicate helper:data_library/dimension/the_end run function compass_utility:compass_utility/radar_save/the_end/run