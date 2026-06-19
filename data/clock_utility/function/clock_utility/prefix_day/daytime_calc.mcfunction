#region
# one
    #> get day time
    execute store result score #mwt.get_day mwt.data run time query day
    execute store result score #mwt.get_time mwt.data run time query daytime
# two
    #> prefix day calc
    execute if score #mwt.get_day mwt.data matches ..999 run data modify storage mwt:clock enum.prefix set value "{\"score\":{\"name\":\"#mwt.get_day\",\"objective\":\"mwt.data\"}}"
    execute if score #mwt.get_day mwt.data matches ..999 run scoreboard players set #mwt.prefix.day_m mwt.data 0
    execute if score #mwt.get_day mwt.data matches ..999 run scoreboard players set #mwt.prefix.day_g mwt.data 0
    execute if score #mwt.get_day mwt.data matches 1000.. run function clock_utility:clock_utility/prefix_day/day_k
    execute if score #mwt.prefix.day_m mwt.data matches 1000.. run function clock_utility:clock_utility/prefix_day/day_k
    execute if score #mwt.prefix.day_g mwt.data matches 1000.. run function clock_utility:clock_utility/prefix_day/day_g
# three - hour calc
    scoreboard players operation #mwt.time_hour mwt.data = #mwt.get_time mwt.data
    scoreboard players operation #mwt.time_hour mwt.data /= #mwt.clock.op.1000 mwt.data
    scoreboard players operation #mwt.time_hour mwt.data += #mwt.clock.op.6 mwt.data
    #> 0 in front
        execute if score #mwt.time_hour mwt.data matches 24.. run scoreboard players remove #mwt.time_hour mwt.data 24
        execute if score #mwt.time_hour mwt.data matches 10.. run data modify storage mwt:clock enum.hr set value ""
        execute unless score #mwt.time_hour mwt.data matches 10.. run data modify storage mwt:clock enum.hr set value "0"
# four - minute calc
    scoreboard players operation #mwt.time_minute mwt.data = #mwt.get_time mwt.data
    scoreboard players operation #mwt.time_minute mwt.data %= #mwt.clock.op.1000 mwt.data
    scoreboard players operation #mwt.time_minute mwt.data *= #mwt.clock.op.6 mwt.data
    scoreboard players operation #mwt.time_minute mwt.data /= #mwt.num.op.100 mwt.data
    #> 0 in front
        execute if score #mwt.time_minute mwt.data matches 10.. run data modify storage mwt:clock enum.mn set value ":"
        execute unless score #mwt.time_minute mwt.data matches 10.. run data modify storage mwt:clock enum.mn set value ":0"
# five - display
    data modify storage mwt:clock enum.day set value "[{\"text\":\"Day \",\"color\":\"green\",\"italic\":true},{\"nbt\":\"enum.prefix\",\"storage\":\"mwt:clock\",\"interpret\":true}]"
    data modify storage mwt:clock enum.raw set value "[\"\",{\"nbt\":\"enum.day\",\"storage\":\"mwt:clock\",\"interpret\":true},{\"text\":\" | \",\"color\":\"gray\"},[{\"nbt\":\"enum.hr\",\"storage\":\"mwt:clock\",\"color\":\"yellow\"},{\"score\":{\"name\":\"#mwt.time_hour\",\"objective\":\"mwt.data\"}},{\"nbt\":\"enum.mn\",\"storage\":\"mwt:clock\"},{\"score\":{\"name\":\"#mwt.time_minute\",\"objective\":\"mwt.data\"}}]]"
#endregion