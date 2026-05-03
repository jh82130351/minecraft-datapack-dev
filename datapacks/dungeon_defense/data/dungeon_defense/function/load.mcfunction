scoreboard objectives add dungeon_stage dummy
scoreboard objectives add dungeon_timer dummy
scoreboard objectives add mob_count dummy

scoreboard players set #3 dungeon_timer 3
scoreboard players set #20 dungeon_timer 20

scoreboard players set #dungeon_x dungeon_stage 10000
scoreboard players set #dungeon_y dungeon_stage 100
scoreboard players set #dungeon_z dungeon_stage 10000

# 종이 사용 통계 스코어보드
scoreboard objectives add use_paper minecraft.used:minecraft.paper

tellraw @a {"text":"[던전 디펜스] 시스템 로드 완료!","color":"gold"}
