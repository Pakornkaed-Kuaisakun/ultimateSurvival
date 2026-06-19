execute as @a[tag=!global.ignore,predicate=!compass_utility:compass_utility/radar_save/radar_act_false] unless score @s mwt.sneak.sec matches 1.. run function helper:data_library/radar_work/swap_sec

schedule function compass_utility:compass_utility/radar/run 1s
