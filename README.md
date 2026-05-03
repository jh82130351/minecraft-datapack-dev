## 🧛 던전 디펜스 시스템 (v1.0 - 구현 완료)

3단계 난이도의 던전 디펜스. 토큰 시스템으로 입장하고 웨이브를 클리어하며 보상을 획득합니다.

### 핵심 메커니즘

**1. 던전 구역** (`x: 10000, y: 100, z: 10000`, 50×21×50 크기)
- stone 바닥 + barrier 벽 + torch 조명
- 1/2/3단계별로 난이도 증가
- 몹 전멸 시 자동 클리어

**2. 웨이브 시스템**
```
Wave 1: 좀비 2마리 (체력 25, 데미지 3)
Wave 2: 좀비 1 + 스켈레톤 1 (체력 40/35)
Wave 3: 좀비 + 스켈레톤 + 크리퍼 (체력 60/50/40)
```

**3. 토큰 시스템**
- **1단계 토큰**: 작업대 제작 (숯8 + 종이1) → 우클릭으로 입장
- **2단계 토큰**: 1단계 클리어 보상
- **3단계 토큰**: 2단계 클리어 보상
- 우클릭 감지 방식: `minecraft.used:minecraft.paper` 통계 스코어보드

### 보상
```
Wave 1 CLEAR → 2단계 토큰 + 경험치 10레벨
Wave 2 CLEAR → 3단계 토큰 + 경험치 20레벨
Wave 3 CLEAR → 귀한 석(다이아 블록) + 경험치 50레벨
```

---

## 📋 구현 구조 (실제)

### 파일 구성
```
datapacks/dungeon_defense/
├── pack.mcmeta
└── data/
    ├── dungeon_defense/
    │   ├── function/
    │   │   ├── load.mcfunction              # 초기화 (스코어보드 생성)
    │   │   ├── tick.mcfunction              # 메인 루프 (토큰 감지 + 게임 진행)
    │   │   ├── token/
    │   │   │   ├── use_stage1.mcfunction     # 1단계 입장
    │   │   │   ├── use_stage2.mcfunction     # 2단계 입장
    │   │   │   └── use_stage3.mcfunction     # 3단계 입장
    │   │   ├── dungeon/
    │   │   │   ├── spawn_stage1.mcfunction   # 좀비 2마리 스폰
    │   │   │   ├── spawn_stage2.mcfunction   # 좀비1 + 스켈레톤1
    │   │   │   ├── spawn_stage3.mcfunction   # 좀비 + 스켈레톤 + 크리퍼
    │   │   │   └── clear_check.mcfunction    # 몹 전멸 체크
    │   │   └── rewards/
    │   │       ├── stage1_clear.mcfunction   # 2단계 토큰 보상
    │   │       ├── stage2_clear.mcfunction   # 3단계 토큰 보상
    │   │       └── stage3_clear.mcfunction   # 귀한 석 보상
    │   └── recipes/
    │       └── stage1_token.json             # 1단계 토큰 제작 레시피
    └── minecraft/tags/function/
        ├── load.json
        └── tick.json
```

### 스코어보드
| 이름 | 용도 |
|------|------|
| `dungeon_stage` | 현재 웨이브 단계 (1/2/3) |
| `dungeon_timer` | 입장 카운트다운 (60틱 = 3초) |
| `mob_count` | 잔여 몹 수 |
| `use_paper` | 종이 우클릭 통계 |

### 엔티티 태그
| 태그 | 용도 |
|------|------|
| `waiting_teleport` | 텔레포트 대기 중 |
| `in_dungeon` | 던전 내 플레이어 |
| `dungeon_mob` | 던전 스폰 몹 |

---

## 🛠 dev_tools - 개발용 블레이즈 막대기

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
