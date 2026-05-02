# SLEEP: 허기 7 이상일 때 20틱(1초)마다 ❤️ 1 회복
execute store result score @s food_lvl run data get entity @s foodLevel
execute if score @s food_lvl matches 7.. if score @s regen_timer matches 20.. run scoreboard players set @s regen_timer 0
execute if score @s food_lvl matches 7.. if score @s regen_timer matches 20.. run effect give @s regeneration 3 0 true
