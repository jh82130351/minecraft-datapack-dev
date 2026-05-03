execute store result score @s mob_count run execute if entity @e[tag=dungeon_mob,distance=..50]

execute as @s[scores={mob_count=0,dungeon_stage=1}] run function dungeon_defense:rewards/stage1_clear
execute as @s[scores={mob_count=0,dungeon_stage=2}] run function dungeon_defense:rewards/stage2_clear
execute as @s[scores={mob_count=0,dungeon_stage=3}] run function dungeon_defense:rewards/stage3_clear
