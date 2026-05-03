## 🧛 뱀파이어 서바이벌 스타일 디펜스 존

### 핵심 메커니즘

**1. 던전 구역 (100×100×100)**
- 특정 좌표 범위 설정 (예: x: 1000~1100, y: 60~160, z: -500~-400)
- 구역 진입 시 게임 시작 트리거
- 탈출 불가 (worldborder 또는 barrier 블록)

**2. 웨이브 시스템**
```
웨이브 1: 좀비 5마리 (체력 20)
웨이브 2: 좀비 10마리 + 스켈레톤 3마리
웨이브 3: 크리퍼 5마리 + 거미 10마리
...
웨이브 10+: 보스 몹 (위더 스켈레톤, 엔더맨)
```

**3. 토큰 시스템**
- 아이템: 커스텀 네임 "던전 입장권" (종이 또는 특정 아이템)
- 진입 시 토큰 1개 소모
- 토큰 제작법: 작업대 레시피 (advancement 활용 또는 상점 구매)

---

## 📋 구현 구조

### 파일 구성
```
datapacks/dungeon_defense/
├── pack.mcmeta
└── data/
    ├── dungeon_defense/
    │   └── function/
    │       ├── load.mcfunction          # 초기화
    │       ├── tick.mcfunction          # 메인 루프
    │       ├── zone_check.mcfunction    # 구역 진입 감지
    │       ├── start_game.mcfunction    # 게임 시작
    │       ├── wave_spawn.mcfunction    # 웨이브별 스폰
    │       ├── wave_clear.mcfunction    # 웨이브 클리어 체크
    │       ├── game_end.mcfunction      # 게임 종료 (승리/패배)
    │       ├── token_check.mcfunction   # 토큰 소지 확인
    │       └── rewards.mcfunction       # 보상 지급
    └── minecraft/tags/function/
        ├── load.json
        └── tick.json
```

---

## 🎮 주요 기능 상세

### 1. **구역 진입 감지**
```mcfunction
# zone_check.mcfunction
# 던전 구역: x 1000~1100, y 60~160, z -500~-400

# 구역 내 플레이어 태그 부여
execute as @a[x=1000,y=60,z=-500,dx=100,dy=100,dz=100] run tag @s add in_dungeon

# 토큰 있는지 체크
execute as @a[tag=in_dungeon,tag=!game_active] run function dungeon_defense:token_check
```

### 2. **토큰 검증 및 게임 시작**
```mcfunction
# token_check.mcfunction
# 토큰 아이템: paper{display:{Name:'{"text":"던전 입장권"}'}}

execute as @s[nbt={Inventory:[{id:"minecraft:paper",tag:{display:{Name:'{"text":"던전 입장권"}'}}}]}] run function dungeon_defense:start_game

# 토큰 없으면 강제 퇴출
execute as @s[nbt=!{Inventory:[{id:"minecraft:paper",tag:{display:{Name:'{"text":"던전 입장권"}'}}}]}] run tp @s 0 100 0
execute as @s[nbt=!{Inventory:[{id:"minecraft:paper",tag:{display:{Name:'{"text":"던전 입장권"}'}}}]}] run title @s actionbar {"text":"입장권이 필요합니다!","color":"red"}
```

### 3. **웨이브 스폰 시스템**
```mcfunction
# wave_spawn.mcfunction
# scoreboard: wave (웨이브 번호), mob_count (남은 몹 수)

# 웨이브 1: 좀비 5마리
execute if score $wave wave matches 1 run summon zombie 1050 65 -450 {CustomName:'{"text":"레벨 1 좀비"}',Health:20f,Attributes:[{Name:"generic.max_health",Base:20}]}
execute if score $wave wave matches 1 run summon zombie 1050 65 -455 {CustomName:'{"text":"레벨 1 좀비"}',Health:20f}
# ... (총 5마리)

# 웨이브 2: 좀비 10마리 + 스켈레톤 3마리
execute if score $wave wave matches 2 run summon zombie 1050 65 -450 {Health:30f,Attributes:[{Name:"generic.max_health",Base:30}]}
execute if score $wave wave matches 2 run summon skeleton 1050 65 -460 {HandItems:[{id:"minecraft:bow",Count:1b}]}

# 웨이브 3+: 난이도 증가
execute if score $wave wave matches 3.. run scoreboard players operation $mob_health wave = $wave wave
execute if score $wave wave matches 3.. run scoreboard players operation $mob_health wave *= #20 constant
# 체력 = 웨이브 * 20
```

### 4. **웨이브 클리어 감지**
```mcfunction
# wave_clear.mcfunction
# 구역 내 적대적 몹 수 카운트

execute store result score $mob_count wave run execute if entity @e[type=#dungeon_defense:hostile,x=1000,y=60,z=-500,dx=100,dy=100,dz=100]

# 몹 0마리 → 다음 웨이브
execute if score $mob_count wave matches 0 run scoreboard players add $wave wave 1
execute if score $mob_count wave matches 0 run title @a[tag=in_dungeon] title {"text":"Wave Clear!","color":"gold"}
execute if score $mob_count wave matches 0 run function dungeon_defense:wave_spawn
```

### 5. **보상 시스템**
```mcfunction
# rewards.mcfunction
# 웨이브 클리어 시 경험치 + 아이템

# 웨이브별 보상
execute if score $wave wave matches 5 run give @a[tag=in_dungeon] diamond 1
execute if score $wave wave matches 10 run give @a[tag=in_dungeon] netherite_scrap 1

# 경험치 (웨이브 * 10)
execute as @a[tag=in_dungeon] run experience add @s 10 levels
```

---

## 🎯 추가 기능 아이디어

### 난이도 조절
- **이지 모드**: 몹 체력 50%, 보상 70%
- **하드 모드**: 몹 체력 200%, 보상 150%
- 토큰 종류로 구분 ("던전 입장권 [노멀]", "던전 입장권 [하드]")

### 멀티플레이 지원
- 2인 이상 입장 시 몹 수 증가 (플레이어 수 × 1.5)
- 팀 태그로 파티 시스템 구현

### 제한 시간
- 웨이브당 5분 시간 제한
- 초과 시 강제 종료 + 보상 없음

### 리더보드
- 최고 웨이브 기록 scoreboard
- 사이드바에 실시간 순위 표시

### 특수 웨이브
- 보스 웨이브 (5, 10, 15...): 위더, 엔더 드래곤 (소환)
- 랜덤 이벤트: "폭발의 웨이브" (크리퍼만 30마리)

---

## ⚙️ 기술적 고려사항

### 1. **성능 최적화**
- 몹 스폰 제한 (한 번에 최대 20마리)
- 웨이브 시작 전 3초 대기 (준비 시간)
- 죽은 몹 즉시 제거 (`/kill @e[type=item]`)

### 2. **버그 방지**
- 게임 중 로그아웃 시 진행 상태 저장 (`{game_active:1b}` NBT)
- 재접속 시 자동 퇴출 또는 이어하기 선택
- 토큰 중복 소모 방지 (clear 명령어로 정확히 1개만 제거)

### 3. **보안**
- 크리에이티브 모드 플레이어 진입 차단
- 던전 내 블록 파괴/설치 금지 (`/gamerule`)
- 외부에서 던전 내부로 엔더 진주 투척 차단

---

## 🚀 개발 로드맵

### Phase 1 (기본 구현)
1. 구역 설정 및 진입 감지
2. 토큰 검증 시스템
3. 웨이브 1~5 스폰 로직
4. 클리어 감지 + 보상

### Phase 2 (밸런싱)
1. 웨이브 10까지 확장
2. 난이도별 몹 스탯 조정
3. 보상 테이블 작성

### Phase 3 (고급 기능)
1. 멀티플레이 지원
2. 리더보드
3. 보스 웨이브
