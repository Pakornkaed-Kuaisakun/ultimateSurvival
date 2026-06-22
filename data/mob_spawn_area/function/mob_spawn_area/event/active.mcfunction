tellraw @s {"text":"Show Mob Spawn Area activated!","color":"green"}
tellraw @s {"text":"(Cannot be used in the open air during the day time!)","color":"red"}
playsound entity.player.levelup master @s ~ ~ ~ 2.5 2 1
advancement grant @s only mob_spawn_area:mob_spawn_area/active/mob_spawn_area
scoreboard players reset @s mwt.processbar