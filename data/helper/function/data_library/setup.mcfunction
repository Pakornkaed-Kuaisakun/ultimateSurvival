#define tag global.ignore
#define tag global.ignore.gui
#define tag global.ignore.kill
#define tag global.ignore.pos

#alias entity nearmwt @e[sort=nearmwt,limit=1]
#alias entity limit1 @e[limit=1]

scoreboard objectives add mwt.data dummy
scoreboard objectives add mwt.option trigger
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
scoreboard objectives add mwt.max.hp dummy
scoreboard objectives add mwt.now.hp dummy

scoreboard players set #mwt.clock.op.6 mwt.data 6
scoreboard players set #mwt.num.op.8 mwt.data 8
scoreboard players set #mwt.num.op.10 mwt.data 10
scoreboard players set #mwt.num.op.100 mwt.data 100
scoreboard players set #mwt.radar.op.360 mwt.data 360
scoreboard players set #mwt.clock.op.1000 mwt.data 1000

function helper:data_library/run

execute as @a[tag=!global.ignore,tag=!global.ignore.gui] at @s run playsound block.note_block.bell master @s ~ ~ ~ 2.5 1 1

tellraw @a[tag=!global.ignore,tag=!global.ignore.gui] {"text":"DatapackUtility Reloaded!","color":"green"}