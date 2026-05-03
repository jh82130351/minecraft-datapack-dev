execute as @a[nbt={SelectedItem:{id:"minecraft:paper",components:{"minecraft:custom_data":{dungeon_token:1}}}}] at @s run function dungeon_defense:token/use_stage1

execute as @a[nbt={SelectedItem:{id:"minecraft:paper",components:{"minecraft:custom_data":{dungeon_token:2}}}}] at @s run function dungeon_defense:token/use_stage2

execute as @a[nbt={SelectedItem:{id:"minecraft:paper",components:{"minecraft:custom_data":{dungeon_token:3}}}}] at @s run function dungeon_defense:token/use_stage3

execute as @a[tag=in_dungeon] at @s run function dungeon_defense:dungeon/clear_check

execute as @a[tag=waiting_teleport] run scoreboard players remove @s dungeon_timer 1

execute as @a[tag=waiting_teleport,scores={dungeon_timer=..0}] run tp @s 10000 100 10000
execute as @a[tag=waiting_teleport,scores={dungeon_timer=..0}] run function dungeon_defense:dungeon/spawn_stage1 if score @s dungeon_stage matches 1
execute as @a[tag=waiting_teleport,scores={dungeon_timer=..0}] run function dungeon_defense:dungeon/spawn_stage2 if score @s dungeon_stage matches 2
execute as @a[tag=waiting_teleport,scores={dungeon_timer=..0}] run function dungeon_defense:dungeon/spawn_stage3 if score @s dungeon_stage matches 3
execute as @a[tag=waiting_teleport,scores={dungeon_timer=..0}] run tag @s remove waiting_teleport
execute as @a[tag=waiting_teleport,scores={dungeon_timer=..0}] run tag @s add in_dungeon
