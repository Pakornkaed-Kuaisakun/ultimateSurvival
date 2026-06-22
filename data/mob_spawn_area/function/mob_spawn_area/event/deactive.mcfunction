advancement revoke @s only mob_spawn_area:mob_spawn_area/active/mob_spawn_area
scoreboard players reset @s mwt.get.block
tellraw @s {"text":"Show Mob Spawn Area deactivated!","color":"red"}
playsound entity.enderman.teleport master @s ~ ~ ~ 2.5 .5 1