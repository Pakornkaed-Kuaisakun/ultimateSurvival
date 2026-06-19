data remove storage mwt:clock enum

execute as @a[tag=!global.ignore,tag=!global.ignore.gui] at @s run playsound block.note_block.pling master @s ~ ~ ~ 2.5 1 1

tellraw @a[tag=!global.ignore,tag=!global.ignore.gui] {"text":"[clock_utility Uninstalled]","color":"red"}