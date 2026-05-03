# 종이 사용 감지 테스트
execute as @a[scores={use_paper=1..}] run tellraw @s {"text":"[DEBUG] 종이 우클릭 감지!","color":"aqua"}

# 토큰 아이템 감지 테스트
execute as @a[scores={use_paper=1..}] if items entity @s weapon.mainhand paper run tellraw @s {"text":"[DEBUG] 손에 종이 있음","color":"green"}

execute as @a[scores={use_paper=1..}] if items entity @s weapon.mainhand paper[custom_data={dungeon_token:1}] run tellraw @s {"text":"[DEBUG] 1단계 토큰 감지 성공!","color":"gold"}
