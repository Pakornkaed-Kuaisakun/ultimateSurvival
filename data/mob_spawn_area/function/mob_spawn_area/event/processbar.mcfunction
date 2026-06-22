function helper:data_library/lib/sneak_processbar

execute if score @s mwt.processbar matches -1 run title @s actionbar [{"text":"Show Mob Spawn Area ","color":"gold","bold":true},{"text":"[","color":"aqua"},{"text":"❙❙❙❙❙❙❙❙❙❙","color":"red","bold":false},{"text":"]","color":"aqua"}]

execute if score @s mwt.processbar matches 1 run title @s actionbar [{"text":"Show Mob Spawn Area ","color":"gold","bold":true},{"text":"[","color":"aqua"},[{"text":"❙❙","color":"green","bold":false},{"text":"❙❙❙❙❙❙❙❙","color":"gray"}],{"text":"]","color":"aqua"}]
execute if score @s mwt.processbar matches 2 run title @s actionbar [{"text":"Show Mob Spawn Area ","color":"gold","bold":true},{"text":"[","color":"aqua"},[{"text":"❙❙❙","color":"green","bold":false},{"text":"❙❙❙❙❙❙❙","color":"gray"}],{"text":"]","color":"aqua"}]
execute if score @s mwt.processbar matches 3 run title @s actionbar [{"text":"Show Mob Spawn Area ","color":"gold","bold":true},{"text":"[","color":"aqua"},[{"text":"❙❙❙❙","color":"green","bold":false},{"text":"❙❙❙❙❙❙","color":"gray"}],{"text":"]","color":"aqua"}]
execute if score @s mwt.processbar matches 4 run title @s actionbar [{"text":"Show Mob Spawn Area ","color":"gold","bold":true},{"text":"[","color":"aqua"},[{"text":"❙❙❙❙❙","color":"green","bold":false},{"text":"❙❙❙❙❙","color":"gray"}],{"text":"]","color":"aqua"}]
execute if score @s mwt.processbar matches 5 run title @s actionbar [{"text":"Show Mob Spawn Area ","color":"gold","bold":true},{"text":"[","color":"aqua"},[{"text":"❙❙❙❙❙❙","color":"green","bold":false},{"text":"❙❙❙❙","color":"gray"}],{"text":"]","color":"aqua"}]
execute if score @s mwt.processbar matches 6 run title @s actionbar [{"text":"Show Mob Spawn Area ","color":"gold","bold":true},{"text":"[","color":"aqua"},[{"text":"❙❙❙❙❙❙❙","color":"green","bold":false},{"text":"❙❙❙","color":"gray"}],{"text":"]","color":"aqua"}]
execute if score @s mwt.processbar matches 7 run title @s actionbar [{"text":"Show Mob Spawn Area ","color":"gold","bold":true},{"text":"[","color":"aqua"},[{"text":"❙❙❙❙❙❙❙❙","color":"green","bold":false},{"text":"❙❙","color":"gray"}],{"text":"]","color":"aqua"}]
execute if score @s mwt.processbar matches 8 run title @s actionbar [{"text":"Show Mob Spawn Area ","color":"gold","bold":true},{"text":"[","color":"aqua"},[{"text":"❙❙❙❙❙❙❙❙❙","color":"green","bold":false},{"text":"❙","color":"gray"}],{"text":"]","color":"aqua"}]
execute if score @s mwt.processbar matches 9 run title @s actionbar [{"text":"Show Mob Spawn Area ","color":"gold","bold":true},{"text":"[","color":"aqua"},{"text":"❙❙❙❙❙❙❙❙❙❙","color":"green","bold":false},{"text":"]","color":"aqua"}]
execute if score @s mwt.processbar matches 10 run function mob_spawn_area:mob_spawn_area/event/active

#active 61