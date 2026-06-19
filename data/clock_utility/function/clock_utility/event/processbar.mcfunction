function helper:data_library/lib/sneak_processbar

title @s[scores={mwt.processbar=-1}] actionbar [{"text":"Show Clock ","color":"gold","bold":true},{"text":"[","color":"aqua"},[{"text":"❙❙❙❙❙❙❙❙❙❙","color":"red","bold":false}],{"text":"]","color":"aqua"}]

title @s[scores={mwt.processbar=1}] actionbar [{"text":"Show Clock ","color":"gold","bold":true},{"text":"[","color":"aqua"},[{"text":"❙❙","color":"green","bold":false},{"text":"❙❙❙❙❙❙❙❙","color":"gray"}],{"text":"]","color":"aqua"}]
title @s[scores={mwt.processbar=2}] actionbar [{"text":"Show Clock ","color":"gold","bold":true},{"text":"[","color":"aqua"},[{"text":"❙❙❙","color":"green","bold":false},{"text":"❙❙❙❙❙❙❙","color":"gray"}],{"text":"]","color":"aqua"}]
title @s[scores={mwt.processbar=3}] actionbar [{"text":"Show Clock ","color":"gold","bold":true},{"text":"[","color":"aqua"},[{"text":"❙❙❙❙","color":"green","bold":false},{"text":"❙❙❙❙❙❙","color":"gray"}],{"text":"]","color":"aqua"}]
title @s[scores={mwt.processbar=4}] actionbar [{"text":"Show Clock ","color":"gold","bold":true},{"text":"[","color":"aqua"},[{"text":"❙❙❙❙❙","color":"green","bold":false},{"text":"❙❙❙❙❙","color":"gray"}],{"text":"]","color":"aqua"}]
title @s[scores={mwt.processbar=5}] actionbar [{"text":"Show Clock ","color":"gold","bold":true},{"text":"[","color":"aqua"},[{"text":"❙❙❙❙❙❙","color":"green","bold":false},{"text":"❙❙❙❙","color":"gray"}],{"text":"]","color":"aqua"}]
title @s[scores={mwt.processbar=6}] actionbar [{"text":"Show Clock ","color":"gold","bold":true},{"text":"[","color":"aqua"},[{"text":"❙❙❙❙❙❙❙","color":"green","bold":false},{"text":"❙❙❙","color":"gray"}],{"text":"]","color":"aqua"}]
title @s[scores={mwt.processbar=7}] actionbar [{"text":"Show Clock ","color":"gold","bold":true},{"text":"[","color":"aqua"},[{"text":"❙❙❙❙❙❙❙❙","color":"green","bold":false},{"text":"❙❙","color":"gray"}],{"text":"]","color":"aqua"}]
title @s[scores={mwt.processbar=8}] actionbar [{"text":"Show Clock ","color":"gold","bold":true},{"text":"[","color":"aqua"},[{"text":"❙❙❙❙❙❙❙❙❙","color":"green","bold":false},{"text":"❙","color":"gray"}],{"text":"]","color":"aqua"}]
title @s[scores={mwt.processbar=9}] actionbar [{"text":"Show Clock ","color":"gold","bold":true},{"text":"[","color":"aqua"},[{"text":"❙❙❙❙❙❙❙❙❙❙","color":"green","bold":false}],{"text":"]","color":"aqua"}]
execute if score @s mwt.processbar matches 10 run function clock_utility:clock_utility/event/active

#active 61