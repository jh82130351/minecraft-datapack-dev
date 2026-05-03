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

---

## 🛠 dev_tools - 개발용 블레이즈 막대기

**대상:** 세모 (서버 개발자/관리자)
**목적:** 던전 구역 설정 및 좌표 관리
**데이터팩:** `dev_tools`

### 기능 요약
| 동작 | 기능 | 용도 |
|------|------|------|
| 우클릭 | 블록 좌표 저장 | 개별 좌표 마킹 (스폰 위치, 중요 지점) |
| F키 1회 | 영역 시작점 설정 | 던전 구역 설정 시작 |
| F키 2회 | 영역 끝점 설정 | 던전 구역 크기 확인 (dx, dy, dz) |

### 설치 및 지급
```bash
# 서버 디렉토리 확인
cd ~/.openclaw/workspace/minecraft_core/world/datapacks
ls -la dev_tools/

# 서버 콘솔에서 리로드
/reload
```

막대기 지급:
```mcfunction
# 게임 내에서 (본인에게)
/function dev_tools:give_coord_stick

# 또는 특정 플레이어에게
/execute as <플레이어명> run function dev_tools:give_coord_stick
```

### 사용 방법

**방법 1: 개별 좌표 저장 (우클릭)**
- 블레이즈 막대기를 손에 들고 저장할 블록을 바라본 후 우클릭 (최대 100블록)
- 결과: actionbar에 `✓ 좌표 저장됨: X: 1050 Y: 65 Z: -450`, 파티클 효과

저장된 좌표 확인:
```mcfunction
/function dev_tools:list_coords
```

**방법 2: 영역 크기 측정 (F키)**
1. 블레이즈 막대기를 손에 들고 영역 첫 번째 모서리 블록 바라보기
2. F키 누르기 → `✓ 위치1 설정 완료`
3. 영역 두 번째 모서리 블록 바라보기
4. F키 한 번 더 누르기 → dx, dy, dz 출력

### 스코어보드 목록
- `coord_x`, `coord_y`, `coord_z` — 우클릭 좌표 임시 저장
- `pos1_x`, `pos1_y`, `pos1_z` — 영역 시작점
- `pos2_x`, `pos2_y`, `pos2_z` — 영역 끝점
- `region_dx`, `region_dy`, `region_dz` — 영역 크기
- `has_pos1` — 위치1 설정 여부 (0/1)
- `raycast_dist` — 레이캐스트 거리
- `use_blaze_rod` — 우클릭 감지
- `drop_stick` — F키 감지

### 엔티티 태그
- `coord_marker` — 우클릭으로 저장된 좌표 마커
- `pos1_marker` — 영역 시작점 (임시)
- `pos2_marker` — 영역 끝점 (임시)

### 데이터팩 파일 구조
```
dev_tools/
├── pack.mcmeta
└── data/
    ├── dev_tools/function/
    │   ├── load.mcfunction
    │   ├── tick.mcfunction
    │   ├── give_coord_stick.mcfunction
    │   ├── raycast_start.mcfunction
    │   ├── raycast_step.mcfunction
    │   ├── save_coords.mcfunction
    │   ├── list_coords.mcfunction
    │   ├── region_raycast_start.mcfunction
    │   ├── region_raycast_step.mcfunction
    │   ├── set_region_point.mcfunction
    │   ├── set_pos1.mcfunction
    │   ├── set_pos2.mcfunction
    │   ├── calculate_region.mcfunction
    │   └── return_stick.mcfunction
    └── minecraft/tags/function/
        ├── load.json
        └── tick.json
```

### 명령어 치트시트
| 명령어 | 설명 |
|--------|------|
| `/function dev_tools:give_coord_stick` | 막대기 지급 |
| `/function dev_tools:list_coords` | 저장된 좌표 목록 보기 |
| `/kill @e[type=marker,tag=coord_marker]` | 저장된 좌표 전부 삭제 |
| `/scoreboard players set @s has_pos1 0` | 영역 선택 초기화 (버그 시) |
| `/reload` | 데이터팩 리로드 |

### 트러블슈팅
- **"너무 멀리 있습니다"** → 100블록 이내로 접근
- **F키 반응 없음** → 메인핸드(주손)에 막대기 들기
- **막대기 분실** → `/function dev_tools:give_coord_stick` 재지급
- **좌표 정리 필요** → `/kill @e[type=marker,tag=coord_marker]`

### 다음 단계
이 도구로 던전 구역을 설정한 후:
1. `zone_check.mcfunction` 작성 — 플레이어 구역 진입 감지
2. 웨이브 스폰 위치 결정 — 우클릭으로 10~20개 지점 마킹
3. 토큰 시스템 연동 — 구역 진입 시 토큰 검증

---

*문서 버전: 1.0 | 작성일: 2026-05-03*
