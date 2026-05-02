# regen_system 로드 - 리로드 안전
scoreboard objectives remove regen_state
scoreboard objectives add regen_state dummy
scoreboard objectives remove regen_timer
scoreboard objectives add regen_timer dummy
scoreboard objectives remove prev_x
scoreboard objectives add prev_x dummy
scoreboard objectives remove prev_y
scoreboard objectives add prev_y dummy
scoreboard objectives remove prev_z
scoreboard objectives add prev_z dummy
scoreboard objectives remove regen_tmp0
scoreboard objectives add regen_tmp0 dummy
scoreboard objectives remove regen_tmp1
scoreboard objectives add regen_tmp1 dummy
scoreboard objectives remove regen_tmp2
scoreboard objectives add regen_tmp2 dummy
scoreboard objectives remove food_lvl
scoreboard objectives add food_lvl dummy

# 사이드바 설정 (상태 표시)
scoreboard objectives setdisplay sidebar regen_state

say [RegenSystem] 로드 완료!
