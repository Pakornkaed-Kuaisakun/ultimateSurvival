    execute if score #mwt.prefix.day_m mwt.data matches 1000..999999 run scoreboard players operation #mwt.digit_1 mwt.data = #mwt.prefix.day_m mwt.data
    execute if score #mwt.prefix.day_m mwt.data matches 1000..999999 run scoreboard players operation #mwt.digit_2.round_dec mwt.data = #mwt.prefix.day_m mwt.data
    execute if score #mwt.prefix.day_m mwt.data matches 1000..999999 run scoreboard players operation #mwt.round_dec mwt.data = #mwt.prefix.day_m mwt.data
    execute if score #mwt.prefix.day_m mwt.data matches 1000..999999 run scoreboard players operation #mwt.digit_1 mwt.data %= #mwt.clock.op.1000 mwt.data
    execute if score #mwt.prefix.day_m mwt.data matches 1000..999999 run scoreboard players operation #mwt.digit_1 mwt.data /= #mwt.num.op.100 mwt.data
    execute if score #mwt.prefix.day_m mwt.data matches 1000..999999 run scoreboard players operation #mwt.digit_2.round_dec mwt.data %= #mwt.num.op.100 mwt.data
    execute if score #mwt.prefix.day_m mwt.data matches 1000..999999 run scoreboard players operation #mwt.digit_2.round_dec mwt.data /= #mwt.num.op.10 mwt.data

    execute if score #mwt.prefix.day_m mwt.data matches 1000..999999 run scoreboard players operation #mwt.round_dec mwt.data %= #mwt.num.op.10 mwt.data

    execute if score #mwt.prefix.day_m mwt.data matches 1000..999999 if score #mwt.round_dec mwt.data matches ..4 run scoreboard players set #mwt.round_dec.success mwt.data 0
    execute if score #mwt.prefix.day_m mwt.data matches 1000..999999 if score #mwt.round_dec mwt.data matches 5 unless score #mwt.digit_2 mwt.data matches 9 if score #mwt.round_dec.success mwt.data matches 0 run scoreboard players add #mwt.digit_2 mwt.data 1
    execute if score #mwt.prefix.day_m mwt.data matches 1000..999999 if score #mwt.digit_2.round_dec mwt.data matches 9 if score #mwt.digit_2 mwt.data matches 9 if score #mwt.round_dec mwt.data matches 5 run scoreboard players reset #mwt.digit_2 mwt.data
    execute if score #mwt.prefix.day_m mwt.data matches 1000..999999 if score #mwt.digit_2.round_dec mwt.data matches 9 unless score #mwt.digit_2 mwt.data matches 0..9 if score #mwt.round_dec mwt.data matches 5.. run scoreboard players add #mwt.digit_1 mwt.data 1
    execute if score #mwt.prefix.day_m mwt.data matches 1000..999999 if score #mwt.digit_2.round_dec mwt.data matches 0 if score #mwt.round_dec mwt.data matches ..4 run scoreboard players reset #mwt.digit_2 mwt.data
    execute if score #mwt.prefix.day_m mwt.data matches 1000..999999 if score #mwt.round_dec mwt.data matches 5 run scoreboard players set #mwt.round_dec.success mwt.data 1

    execute if score #mwt.prefix.day_m mwt.data matches 1000.. run scoreboard players operation #mwt.prefix.day_g mwt.data = #mwt.prefix.day_m mwt.data
    execute if score #mwt.prefix.day_m mwt.data matches 1000.. run scoreboard players operation #mwt.prefix.day_g mwt.data /= #mwt.clock.op.1000 mwt.data
    execute if score #mwt.prefix.day_g mwt.data matches 1..999 run data modify storage mwt:clock enum.prefix set value "[{\"score\":{\"name\":\"#mwt.prefix.day_g\",\"objective\":\"mwt.data\"}},{\"text\":\".\"},{\"score\":{\"name\":\"#mwt.digit_1\",\"objective\":\"mwt.data\"}}, {\"score\":{\"name\":\"#mwt.digit_2\",\"objective\":\"mwt.data\"}},{\"text\":\"m\"}]"

#made by mwtEarth