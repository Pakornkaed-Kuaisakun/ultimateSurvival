function clock_utility:clock_utility/prefix_day/daytime_calc
execute as @a at @s if predicate helper:data_library/weather/clear run function clock_utility:clock_utility/clock_work/weather_clear
execute as @a at @s if predicate helper:data_library/weather/rain run function clock_utility:clock_utility/clock_work/weather_rain
execute as @a at @s if predicate helper:data_library/weather/storm run function clock_utility:clock_utility/clock_work/weather_storm