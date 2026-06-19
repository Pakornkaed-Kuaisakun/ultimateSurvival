scoreboard objectives add mwt.data dummy
scoreboard objectives add mwt.sneak.lock dummy
scoreboard objectives add mwt.sneak.sec dummy
scoreboard objectives add mwt.processbar dummy
scoreboard objectives add mwt.timer.cancel dummy

scoreboard objectives add mwt.get.posx dummy
scoreboard objectives add mwt.get.posy dummy
scoreboard objectives add mwt.get.posz dummy
scoreboard objectives add mwt.player.rot dummy
scoreboard objectives add mwt.swap.sec dummy
scoreboard objectives add mwt.rd.pointer dummy
scoreboard objectives add mwt.offset.rd dummy
scoreboard objectives add mwt.radar.posx dummy
scoreboard objectives add mwt.radar.posz dummy

function helper:data_library/run

execute as @a[tag=!global.ignore,tag=!global.ignore.gui] at @s run playsound block.note_block.bell master @s ~ ~ ~ 2.5 1 1

tellraw @a[tag=!global.ignore,tag=!global.ignore.gui] {"text":"DatapackUtility Reloaded!","color":"green"}