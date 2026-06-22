tellraw @s {"text":"Show Portal Link activated!","color":"green"}
playsound entity.player.levelup master @s ~ ~ ~ 2.5 2 1
advancement grant @s only portallink_calc:portallink_calc/active/portallink_act
scoreboard players reset @s mwt.processbar