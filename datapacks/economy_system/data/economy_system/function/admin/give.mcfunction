# 사용법: scoreboard players add <플레이어명> coins <금액>
# 예: scoreboard players add Steve coins 100

tellraw @a [{"text":"[관리자] ","color":"red"},{"selector":"@s","color":"yellow"},{"text":"님이 ","color":"white"},{"text":"코인","color":"gold"},{"text":"을 지급받았습니다.","color":"white"}]
