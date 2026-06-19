execute as @s at @s unless score @s mwt.sneak.sec matches 1.. run function clock_utility:clock_utility/show/clock

execute as @s at @s if predicate clock_utility:clock_utility/mainhand run function clock_utility:clock_utility/event/open_func

execute as @s at @s if predicate clock_utility:clock_utility/deactive run function clock_utility:clock_utility/event/deactive
#set score 68