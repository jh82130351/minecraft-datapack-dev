# 1초(20틱)마다 업데이트
execute if score $timer coord_display matches 20.. run function coords_display:update_all
execute if score $timer coord_display matches 20.. run scoreboard players set $timer coord_display 0
scoreboard players add $timer coord_display 1
