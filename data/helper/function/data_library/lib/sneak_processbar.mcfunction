execute if predicate helper:data_library/sneak unless score @s mwt.sneak.lock matches 1 run scoreboard players set @s mwt.timer.cancel 3
execute if predicate helper:data_library/sneak unless score @s mwt.sneak.lock matches 1 run scoreboard players add @s mwt.processbar 1
execute if predicate helper:data_library/sneak run scoreboard players set @s mwt.sneak.lock 1
execute unless predicate helper:data_library/sneak run scoreboard players reset @s mwt.sneak.lock
execute if score @s mwt.timer.cancel matches 1 run scoreboard players set @s mwt.processbar -1