tellraw @s {"text":"Show Coordinate activated!","color":"green"}
tellraw @s {"text":"(Measure mode comming soon)","color":"red"}
tellraw @s {"text":"(Tip Change name compass before Shift hold 4 sec for radar save \n 10 sec for clear save)","color":"gold"}
playsound entity.player.levelup master @s ~ ~ ~ 2.5 2 1
advancement grant @s only compass_utility:compass_utility/active/coord_act
scoreboard players reset @s mwt.processbar