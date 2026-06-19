execute as @a at @s if score #mwt.time_hour mwt.data matches 5..18 run function clock_utility:clock_utility/clock_work/day
execute as @a at @s if score #mwt.time_hour mwt.data matches 19..23 run function clock_utility:clock_utility/clock_work/night
execute as @a at @s if score #mwt.time_hour mwt.data matches ..4 run function clock_utility:clock_utility/clock_work/night