scoreboard objectives remove mwt.get.block

execute as @a[tag=!global.ignore,tag=!global.ignore.gui] at @s run playsound block.note_block.pling master @s ~ ~ ~ 2.5 1 1

tellraw @a[tag=!global.ignore,tag=!global.ignore.gui] {"text":"[Mob Spawn Area Uninstalled]","color":"red"}