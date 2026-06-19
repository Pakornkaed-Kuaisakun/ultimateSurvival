scoreboard objectives remove mwt.leave.game

execute as @a[tag=!global.ignore,tag=!global.ignore.gui] at @s run playsound block.note_block.pling master @s ~ ~ ~ 2.5 1 1

tellraw @a[tag=!global.ignore,tag=!global.ignore.gui] {"text":"[CompassUtility Uninstalled]","color":"red"}

datapack disable "ultimateSurvival:compass_utility"
