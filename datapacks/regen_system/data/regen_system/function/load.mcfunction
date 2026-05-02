# regen_system 로드 — 리로드 안전
scoreboard objectives remove regen_timer
scoreboard objectives add regen_timer dummy
scoreboard objectives remove food_lvl
scoreboard objectives add food_lvl dummy

# 사이드바 제거
scoreboard objectives setdisplay sidebar

say [RegenSystem] 로드 완료!
