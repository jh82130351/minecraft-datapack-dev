# 타이머용 scoreboard
scoreboard objectives add coord_timer dummy

# 보스바 생성 및 설정
bossbar add minecraft:coords {"text":"좌표 로딩중..."}
bossbar set minecraft:coords color green
bossbar set minecraft:coords style notched_6
bossbar set minecraft:coords max 1
bossbar set minecraft:coords value 1

# 모든 플레이어에게 보스바 표시
execute as @a run bossbar set minecraft:coords players @s

say [CoordDisplay] 보스바 모드로 로드 완료!
