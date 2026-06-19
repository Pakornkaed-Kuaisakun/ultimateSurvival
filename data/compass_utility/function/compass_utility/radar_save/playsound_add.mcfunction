execute at @s positioned ~ ~ ~ run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["mwt.radar.ae","global.ignore","global.ignore.pos"],Age:0,Duration:1}
tag @s add mwt.receive.radar
execute if predicate compass_utility:compass_utility/mainhand as @e[type=minecraft:area_effect_cloud,tag=mwt.radar.ae,limit=1] run function compass_utility:compass_utility/radar_save/clear_waypoint
tag @s remove mwt.receive.radar
execute if score @s mwt.sneak.sec matches 1 run playsound block.note_block.guitar master @s ~ ~ ~ 2.5 1 1
execute if score @s mwt.sneak.sec matches 7 run playsound entity.player.levelup master @s ~ ~ ~ 2.5 2 1
execute if score @s mwt.sneak.sec matches 12 run playsound entity.enderman.teleport master @s ~ ~ ~ 2.5 0.5 1
scoreboard players add @s mwt.sneak.sec 1