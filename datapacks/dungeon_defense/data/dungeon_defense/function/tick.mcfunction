# 디버깅
# DEBUG: function dungeon_defense:debug

# 1단계 토큰 사용 감지 (우클릭)
function dungeon_defense:debug
execute as @a[scores={use_paper=1..}] if items entity @s weapon.mainhand paper[custom_data={dungeon_token:1}] run function dungeon_defense:token/use_stage1

# 2단계 토큰 사용 감지
execute as @a[scores={use_paper=1..}] if items entity @s weapon.mainhand paper[custom_data={dungeon_token:2}] run function dungeon_defense:token/use_stage2

# 3단계 토큰 사용 감지
execute as @a[scores={use_paper=1..}] if items entity @s weapon.mainhand paper[custom_data={dungeon_token:3}] run function dungeon_defense:token/use_stage3

# 사용 카운터 리셋
scoreboard players reset @a[scores={use_paper=1..}] use_paper

# 게임 진행 체크
execute as @a[tag=in_dungeon] at @s run function dungeon_defense:dungeon/clear_check

# 타이머 감소
execute as @a[tag=waiting_teleport] run scoreboard players remove @s dungeon_timer 1

# 타이머 0 → 텔레포트 & 스폰
execute as @a[tag=waiting_teleport,scores={dungeon_timer=..0}] run tp @s 10000 100 10000
execute as @a[tag=waiting_teleport,scores={dungeon_timer=..0}] if score @s dungeon_stage matches 1 run function dungeon_defense:dungeon/spawn_stage1
execute as @a[tag=waiting_teleport,scores={dungeon_timer=..0}] if score @s dungeon_stage matches 2 run function dungeon_defense:dungeon/spawn_stage2
execute as @a[tag=waiting_teleport,scores={dungeon_timer=..0}] if score @s dungeon_stage matches 3 run function dungeon_defense:dungeon/spawn_stage3
execute as @a[tag=waiting_teleport,scores={dungeon_timer=..0}] run tag @s remove waiting_teleport
execute as @a[tag=waiting_teleport,scores={dungeon_timer=..0}] run tag @s add in_dungeon
