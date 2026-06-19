#Fullmoon Detector
scoreboard players operation #mwt.moon_phase mwt.data = #mwt.get_day mwt.data
scoreboard players operation #mwt.moon_phase mwt.data %= #mwt.num.op.8 mwt.data

execute if score #mwt.moon_phase mwt.data matches 0 run title @s actionbar [{"text":"Moon: Full ● ","color":"yellow"},{"text":"Can find slime in swamp","color":"green"}]
execute if score #mwt.moon_phase mwt.data matches 1 run title @s actionbar {"text":"-...Moon: Waning Gibbous ● 7 days left","color":"yellow"}
execute if score #mwt.moon_phase mwt.data matches 2 run title @s actionbar {"text":"Moon: Waning Last Quarter ◑ 6 days left","color":"yellow"}
execute if score #mwt.moon_phase mwt.data matches 3 run title @s actionbar {"text":"Moon: Waning Crescent ☽ 5 days left","color":"yellow"}
execute if score #mwt.moon_phase mwt.data matches 4 run title @s actionbar {"text":"Moon: New ○ 4 days left","color":"yellow"}
execute if score #mwt.moon_phase mwt.data matches 5 run title @s actionbar {"text":"Moon: Waxing Crescent ☾ 3 days left","color":"yellow"}
execute if score #mwt.moon_phase mwt.data matches 6 run title @s actionbar {"text":"Moon: Waxing 1st Quarter ◐ 2 days left-.--","color":"yellow"}
execute if score #mwt.moon_phase mwt.data matches 7 run title @s actionbar {"text":"Moon: Waxing Gibbous ● 1 days left","color":"yellow"}