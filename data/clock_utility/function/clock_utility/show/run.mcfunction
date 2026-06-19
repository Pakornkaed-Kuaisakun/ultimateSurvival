execute as @a[tag=!global.ignore,tag=!global.ignore.gui,predicate=helper:data_library/clock_act] at @s run function clock_utility:clock_utility/show/active

schedule function clock_utility:clock_utility/show/run 1s