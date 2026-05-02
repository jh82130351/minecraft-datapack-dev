# 각 축별 좌표 업데이트 (천 단위 = 소수점 3자리)
execute store result score " §aX§f:" coord_display run data get entity @p Pos[0] 1000
execute store result score " §aY§f:" coord_display run data get entity @p Pos[1] 1000
execute store result score " §aZ§f:" coord_display run data get entity @p Pos[2] 1000

# 속도 (제곱: sqrt(x²+z²), 간단히 x만 표시하는 걸로)
execute store result score " §b속도§f:" coord_display run data get entity @p Motion[0] 10000
