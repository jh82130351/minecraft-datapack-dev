# 매 틱: 모든 플레이어 상태 감지 + 회복
execute as @a at @s run function regen_system:detect_state

# 사이드바에 각 상태별 플레이어 수 표시
# (regen_state 값으로 이미 표시됨 — [regen_state] dummy에 @s 값이 자동 반영)
