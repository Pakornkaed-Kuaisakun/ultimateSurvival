execute if score @s mwt.timer.cancel matches 1.. run scoreboard players remove @s mwt.timer.cancel 1
execute if score @s mwt.processbar matches -1 run scoreboard players reset @s mwt.processbar
execute if score @s mwt.timer.cancel matches 0 run scoreboard players reset @s mwt.timer.cancel

execute if predicate helper:data_library/sneak run scoreboard players add @s mwt.sneak.sec 1
execute unless predicate helper:data_library/sneak run scoreboard players reset @s mwt.sneak.sec