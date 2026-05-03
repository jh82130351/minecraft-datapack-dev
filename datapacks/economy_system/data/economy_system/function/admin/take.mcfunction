# 사용법: scoreboard players remove <플레이어명> coins <금액>
# 예: scoreboard players remove Steve coins 50

tellraw @a [{"text":"[관리자] ","color":"red"},{"selector":"@s","color":"yellow"},{"text":"님에게서 ","color":"white"},{"text":"코인","color":"gold"},{"text":"을 회수했습니다.","color":"white"}]
