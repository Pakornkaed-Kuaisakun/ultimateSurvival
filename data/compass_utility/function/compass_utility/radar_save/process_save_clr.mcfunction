execute if score @s mwt.sneak.sec matches 1 run function compass_utility:compass_utility/radar_save/playsound_add
execute if score @s mwt.sneak.sec matches 2..4 run title @s actionbar {"text":"+Right click? to Measure mode","color":"gold","italic":true}
execute if score @s mwt.sneak.sec matches 5 run title @s actionbar [{"text":"Coord radar saving ","color":"light_purple"},{"text":"[","color":"aqua","bold":true},{"text":"❙","color":"green"},{"text":"❙","color":"gray"},{"text":"]","color":"aqua","bold":true}]
execute if score @s mwt.sneak.sec matches 6 run title @s actionbar [{"text":"Coord radar saving ","color":"light_purple"},{"text":"[","color":"aqua","bold":true},{"text":"❙❙","color":"green"},{"text":"]","color":"aqua","bold":true}]
execute if score @s mwt.sneak.sec matches 7 run title @s actionbar {"text":"Save done!","color":"dark_green"}
execute if score @s mwt.sneak.sec matches 7 run function compass_utility:compass_utility/radar_save/playsound_add
execute if score @s mwt.sneak.sec matches 9 run advancement revoke @s only compass_utility:compass_utility/active/radar_act
execute if score @s mwt.sneak.sec matches 10 run title @s actionbar [{"text":"Clear radar ","color":"light_purple"},{"text":"[","color":"aqua","bold":true},{"text":"❙","color":"green"},{"text":"❙","color":"gray"},{"text":"]","color":"aqua","bold":true}]
execute if score @s mwt.sneak.sec matches 11 run title @s actionbar [{"text":"Clear radar ","color":"light_purple"},{"text":"[","color":"aqua","bold":true},{"text":"❙❙","color":"green"},{"text":"]","color":"aqua","bold":true}]
execute if score @s mwt.sneak.sec matches 12 run title @s actionbar {"text":"Clear done!","color":"dark_green"}
execute if score @s mwt.sneak.sec matches 12 run function compass_utility:compass_utility/radar_save/playsound_add
execute if score @s mwt.sneak.sec matches 14 run function compass_utility:compass_utility/radar_save/clear
