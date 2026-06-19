tellraw @s {"text":"Show Clock activated!","color":"green"}
tellraw @s {"text":"(Tip Press Shift hold for FullmoonDetector!)\n(Tip Press Shift hold 3 sec for BiomeDetector!)","color":"gold"}
playsound entity.player.levelup master @s ~ ~ ~ 2.5 2 1
advancement grant @s only clock_utility:clock_utility/active/clock_act
scoreboard players reset @s mwt.processbar