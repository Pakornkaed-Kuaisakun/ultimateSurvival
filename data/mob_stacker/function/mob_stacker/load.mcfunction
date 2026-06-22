scoreboard objectives add mob_merge.count dummy
scoreboard objectives add mob_merge.id dummy
scoreboard objectives add mob_merge.health dummy
scoreboard objectives add mob_merge.cd dummy
scoreboard objectives add mob_merge.timer dummy

scoreboard players set #mm.timer mob_merge.timer 100

tellraw @a {"text":"Mob Stacker Loaded"}