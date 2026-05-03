# 손에 든 아이템이 64개인지 확인
execute store result score @s coin_amount run data get entity @s SelectedItem.count

# 64개가 아니면 실패
execute unless score @s coin_amount matches 64 run tellraw @s {"text":"❌ 손에 64개를 들어야 합니다!","color":"red"}
execute unless score @s coin_amount matches 64 run scoreboard players reset @s sell_blocks
execute unless score @s coin_amount matches 64 run return 0

# 손에 아무것도 없으면 실패
execute unless data entity @s SelectedItem.id run tellraw @s {"text":"❌ 손에 아이템을 들어야 합니다!","color":"red"}
execute unless data entity @s SelectedItem.id run scoreboard players reset @s sell_blocks
execute unless data entity @s SelectedItem.id run return 0

# 손에 든 아이템 64개 제거
item replace entity @s weapon.mainhand with air

# 5 코인 지급
scoreboard players add @s coins 5

# 성공 메시지
tellraw @s {"text":"✅ 블록 64개를 5 코인에 판매했습니다!","color":"green"}
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1

# 리셋
scoreboard players reset @s sell_blocks
scoreboard players reset @s coin_amount
