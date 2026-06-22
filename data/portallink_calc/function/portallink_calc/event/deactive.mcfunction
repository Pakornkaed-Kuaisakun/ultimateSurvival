advancement revoke @s only portallink_calc:portallink_calc/active/portallink_act
scoreboard players reset @s mwt.ptl.posx
scoreboard players reset @s mwt.ptl.posz
tellraw @s {"text":"Show Portal Link deactivated!","color":"red"}
playsound entity.enderman.teleport master @s ~ ~ ~ 2.5 .5 1