# 좌표 표시 데이터팩 로드
scoreboard objectives add coord_display dummy
scoreboard objectives add speed_display dummy
scoreboard objectives setdisplay sidebar coord_display

# 헤더
scoreboard players set "§6§l [ 좌표 & 속도 ]" coord_display 0
scoreboard players set "§7━━━━━━━━━━━━━━━" coord_display 0

# 좌표 X
scoreboard players set " §aX§f:" coord_display 0
# 좌표 Y
scoreboard players set " §aY§f:" coord_display 0
# 좌표 Z
scoreboard players set " §aZ§f:" coord_display 0

scoreboard players set " " coord_display 0

# 속도
scoreboard players set " §b속도§f:" coord_display 0

say [CoordDisplay] 좌표 & 속도 표시 데이터팩 로드 완료!
