playsound block.note_block.guitar master @s[scores={mwt.sneak.sec=1}] ~ ~ ~ 2.5 1 1
scoreboard players add @s[scores={mwt.sneak.sec=0}] mwt.sneak.sec 1

execute if score @s mwt.sneak.sec matches 1..2 run function clock_utility:clock_utility/event/moon_dimension_check

execute if score @s mwt.sneak.sec matches 3 run function clock_utility:clock_utility/event/biome_processbar
title @s[scores={mwt.sneak.sec=5}] actionbar ["",{"text":"...Biome detecting ","bold":true,"color":"green"},{"text":"[","bold":true,"color":"aqua"},{"text":"❙❙","color":"green"},{"text":"]","bold":true,"color":"aqua"}]

execute if score @s mwt.sneak.sec matches 6.. run function clock_utility:clock_utility/show/biome_detect