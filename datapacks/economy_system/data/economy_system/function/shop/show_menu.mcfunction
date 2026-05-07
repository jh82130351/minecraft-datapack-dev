# 헤더
tellraw @s {"text":"━━━━━━━━ 🧪 포션 상점 ━━━━━━━━","color":"light_purple","bold":true}
tellraw @s {"text":""}

# 현재 잔액
tellraw @s [{"text":"💵 현재 잔액: ","color":"yellow"},{"score":{"name":"@s","objective":"coins"},"color":"gold"},{"text":" 코인","color":"yellow"}]
tellraw @s {"text":""}

# 사용법
tellraw @s {"text":"━━ 명령어 사용법 ━━","color":"white","bold":true}
tellraw @s {"text":"포션 구매: /trigger buy set [번호]","color":"gray"}
tellraw @s {"text":"블록 판매: /trigger sell (손에 64개 들고)","color":"gray"}
tellraw @s {"text":""}

# 기본 포션 (8분)
tellraw @s {"text":"━━ 기본 포션 (8분) ━━","color":"white","bold":true}
tellraw @s [{"text":"1. ","color":"gold"},{"text":"💨 신속 - ","color":"aqua"},{"text":"50 코인","color":"gold"}]
tellraw @s [{"text":"2. ","color":"gold"},{"text":"💪 힘 - ","color":"red"},{"text":"50 코인","color":"gold"}]
tellraw @s [{"text":"3. ","color":"gold"},{"text":"❤️ 재생 - ","color":"light_purple"},{"text":"60 코인","color":"gold"}]
tellraw @s [{"text":"4. ","color":"gold"},{"text":"🔥 화염 저항 - ","color":"gold"},{"text":"40 코인","color":"gold"}]
tellraw @s [{"text":"5. ","color":"gold"},{"text":"👁️ 야간 투시 - ","color":"yellow"},{"text":"40 코인","color":"gold"}]
tellraw @s [{"text":"6. ","color":"gold"},{"text":"👻 투명화 - ","color":"gray"},{"text":"80 코인","color":"gold"}]
tellraw @s [{"text":"7. ","color":"gold"},{"text":"🌊 수중 호흡 - ","color":"blue"},{"text":"40 코인","color":"gold"}]
tellraw @s [{"text":"8. ","color":"gold"},{"text":"🪶 느린 낙하 - ","color":"white"},{"text":"40 코인","color":"gold"}]
tellraw @s [{"text":"9. ","color":"gold"},{"text":"⛏️ 채굴 속도 - ","color":"gold"},{"text":"50 코인","color":"gold"}]
tellraw @s [{"text":"10. ","color":"gold"},{"text":"🐰 점프 강화 - ","color":"green"},{"text":"50 코인","color":"gold"}]

tellraw @s {"text":""}

# 강화 포션 (4분)
tellraw @s {"text":"━━ 강화 포션 (4분) ━━","color":"white","bold":true}
tellraw @s [{"text":"11. ","color":"gold"},{"text":"💨 신속 II - ","color":"aqua"},{"text":"100 코인","color":"gold"}]
tellraw @s [{"text":"12. ","color":"gold"},{"text":"💪 힘 II - ","color":"red"},{"text":"100 코인","color":"gold"}]
tellraw @s [{"text":"13. ","color":"gold"},{"text":"❤️ 재생 II - ","color":"light_purple"},{"text":"120 코인","color":"gold"}]
tellraw @s [{"text":"14. ","color":"gold"},{"text":"⛏️ 채굴 속도 II - ","color":"gold"},{"text":"100 코인","color":"gold"}]
tellraw @s [{"text":"15. ","color":"gold"},{"text":"🛡️ 저항 - ","color":"light_purple"},{"text":"200 코인","color":"gold"},{"text":" ⭐특급","color":"red"}]

tellraw @s {"text":""}

# 특수 포션
tellraw @s {"text":"━━ 특수 포션 ━━","color":"white","bold":true}
tellraw @s [{"text":"20. ","color":"gold"},{"text":"🐢 거북 물약 (저항+구속 4분) - ","color":"dark_green"},{"text":"80 코인","color":"gold"}]

tellraw @s {"text":""}

# 블록 판매 안내
tellraw @s {"text":"━━ 블록 판매 ━━","color":"white","bold":true}
tellraw @s {"text":"아무 블록 64개 → 5 코인","color":"green"}
tellraw @s {"text":"명령어: /trigger sell","color":"gray"}

tellraw @s {"text":"━━━━━━━━━━━━━━━━━━━━━━","color":"light_purple","bold":true}

# 리셋
scoreboard players reset @s shop
