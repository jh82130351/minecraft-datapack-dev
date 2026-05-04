# 헤더
tellraw @s {"text":"━━━━━━━━ 🌾 농부 상점 ━━━━━━━━","color":"green","bold":true}
tellraw @s {"text":""}

# 현재 잔액
tellraw @s [{"text":"💵 현재 잔액: ","color":"yellow"},{"score":{"name":"@s","objective":"coins"},"color":"gold"},{"text":" 코인","color":"yellow"}]
tellraw @s {"text":""}

# 사용법
tellraw @s {"text":"━━ 명령어 사용법 ━━","color":"white","bold":true}
tellraw @s {"text":"아이템 구매: /trigger farmer_buy set [번호]","color":"gray"}
tellraw @s {"text":""}

# 성장 촉진제
tellraw @s {"text":"━━ 성장 촉진제 (골분) ━━","color":"white","bold":true}
tellraw @s [{"text":"1. ","color":"gold"},{"text":"🌾 성장 촉진제 x16 - ","color":"green"},{"text":"50 코인","color":"gold"}]
tellraw @s [{"text":"2. ","color":"gold"},{"text":"🌾 성장 촉진제 x64 - ","color":"green"},{"text":"180 코인","color":"gold"},{"text":" (10% 할인)","color":"aqua"}]
tellraw @s [{"text":"3. ","color":"gold"},{"text":"🌾 성장 촉진제 x128 - ","color":"green"},{"text":"320 코인","color":"gold"},{"text":" (20% 할인)","color":"aqua"}]
tellraw @s {"text":""}

# 씨앗
tellraw @s {"text":"━━ 씨앗 ━━","color":"white","bold":true}
tellraw @s [{"text":"4. ","color":"gold"},{"text":"🌾 밀 씨앗 x64 - ","color":"yellow"},{"text":"20 코인","color":"gold"}]
tellraw @s [{"text":"5. ","color":"gold"},{"text":"🥕 당근 x64 - ","color":"gold"},{"text":"30 코인","color":"gold"}]
tellraw @s [{"text":"6. ","color":"gold"},{"text":"🥔 감자 x64 - ","color":"gold"},{"text":"30 코인","color":"gold"}]
tellraw @s [{"text":"7. ","color":"gold"},{"text":"🌱 비트 씨앗 x64 - ","color":"red"},{"text":"25 코인","color":"gold"}]
tellraw @s {"text":""}

# 고급 씨앗/아이템
tellraw @s {"text":"━━ 고급 아이템 ━━","color":"white","bold":true}
tellraw @s [{"text":"8. ","color":"gold"},{"text":"🎃 호박 씨앗 x16 - ","color":"gold"},{"text":"40 코인","color":"gold"}]
tellraw @s [{"text":"9. ","color":"gold"},{"text":"🍉 수박 씨앗 x16 - ","color":"red"},{"text":"40 코인","color":"gold"}]
tellraw @s [{"text":"10. ","color":"gold"},{"text":"🌵 선인장 x16 - ","color":"green"},{"text":"25 코인","color":"gold"}]
tellraw @s [{"text":"11. ","color":"gold"},{"text":"🍄 버섯(갈색) x16 - ","color":"gold"},{"text":"15 코인","color":"gold"}]
tellraw @s [{"text":"12. ","color":"gold"},{"text":"🍄 버섯(빨강) x16 - ","color":"red"},{"text":"15 코인","color":"gold"}]
tellraw @s {"text":""}

# 설명
tellraw @s {"text":"💡 성장 촉진제는 골분처럼 사용하며 효과는 동일합니다!","color":"yellow"}
tellraw @s {"text":"💡 대량 구매시 할인 혜택이 적용됩니다!","color":"aqua"}

tellraw @s {"text":"━━━━━━━━━━━━━━━━━━━━━━","color":"green","bold":true}

# 리셋
scoreboard players reset @s farmer_shop
