# 마인크래프트 바닐라 서버 🎮

**서버 버전:** Minecraft 26.1.2 (안정) | **엔진:** 바닐라 (Mojang 공식)

> 📖 이 문서는 현 개발 버전(26.1.2) 기준으로 작성되었습니다. 버전이 변경되면 문서도 함께 업데이트하세요.

---

## 🚀 서버 정보

| 항목 | 내용 |
|------|------|
| **버전** | Minecraft 26.1.2 (안정) |
| **엔진** | 바닐라 (Mojang 공식) |
| **pack_format** | 81 |
| **포트** | 25565 |
| **외부 접속** | `richard-lay.gl.joinmc.link` |
| **터널링** | playit.gg (웹 대시보드 관리) |
| **온라인 모드** | ✅ (정품만 접속 가능) |
| **경로** | `/home/jh-happy/.openclaw/workspace/minecraft_core/` |
| **실행 명령어** | `screen -DmS minecraft java -Xms1G -Xmx2G -jar server.jar nogui` |
| **터널 실행** | `script -q -c "./playit start" /dev/null > /dev/null 2>&1 &` |

## 👥 협업 체계

| 역할 | 담당 | 책임 |
|------|------|------|
| 🧑‍💼 **기획** | **정현** | 기능 결정, 최종 승인 |
| 🤖 **감독** | **클로드** | 데이터팩 구조 설계 및 코드 검토, 수정 |
| 🔺 **개발자** | **세모** | 서버 운영/관리, GitHub push/pull, 실제 서버 세팅 |

### 작업 흐름
1. 정현님이 원하는 기능을 기획
2. 클로드가 공개 레포의 코드를 검토하고 수정
3. 클로드 → 세모에게 작업 지시 (공개 레포를 통해)
4. 세모가 서버에 적용 및 GitHub push
5. 정현님께 결과 보고

---

## 📦 데이터팩

| 데이터팩 | 설명 | 버전 |
|----------|------|------|
| `coords_display` | 플레이어 좌표 + 8방위 보스바 표시 | v2.1 |
| `regen_system` | 이동 상태별 체력 회복 시스템 | v1.0 |

### 데이터팩 구조 (26.1.2+)
```
datapacks/
├── coords_display/
│   ├── pack.mcmeta          # pack_format: 81
│   └── data/
│       ├── coords_display/
│       │   └── function/
│       │       ├── load.mcfunction
│       │       ├── tick.mcfunction
│       │       └── update_all.mcfunction
│       └── minecraft/tags/function/
│           ├── load.json
│           └── tick.json
└── regen_system/
    ├── pack.mcmeta          # pack_format: 81
    └── data/
        ├── regen_system/
        │   └── function/
        │       ├── load.mcfunction
        │       ├── tick.mcfunction
        │       ├── detect_state.mcfunction
        │       ├── regen_sleep.mcfunction
        │       ├── regen_idle.mcfunction
        │       ├── regen_walk.mcfunction
        │       └── regen_swim.mcfunction
        └── minecraft/tags/function/
            ├── load.json
            └── tick.json
```

### ⚠️ 1.21+ 폴더명 변경 (`functions/` → `function/`)
Minecraft 1.21부터 데이터팩 내 명령어 함수 폴더명이 **복수형 `functions/`에서 단수형 `function/`** 으로 변경되었습니다.

```
❌ (1.20 이하)  data/coords_display/functions/load.mcfunction
✅ (1.21+)     data/coords_display/function/load.mcfunction
```

태그 폴더도 동일:
```
❌   data/minecraft/tags/functions/load.json
✅  data/minecraft/tags/function/load.json
```

---

## 📝 데이터팩 상세

### 1. coords_display (v2.0) — 좌표 + 8방위 표시

**파일:** `coords_display/`

#### load.mcfunction
서버 시작 시 1회 실행. 타이머용 scoreboard `coord_timer` 생성.
```mcfunction
# 타이머용 scoreboard
scoreboard objectives add coord_timer dummy

# 보스바 생성 및 설정
bossbar add minecraft:coords {"text":"좌표 로딩중..."}
bossbar set minecraft:coords color green
bossbar set minecraft:coords style notched_6
bossbar set minecraft:coords max 1
bossbar set minecraft:coords value 1

# 모든 플레이어에게 보스바 표시
execute as @a run bossbar set minecraft:coords players @s

say [CoordDisplay] 보스바 모드로 로드 완료!
```

#### tick.mcfunction
매 틱(0.05초)마다 실행. 5틱(0.25초) 간격으로 `update_all` 호출.
```mcfunction
# 5틱(0.25초)마다 업데이트 (부드러운 표시)
execute if score $timer coord_timer matches 5.. run function coords_display:update_all
execute if score $timer coord_timer matches 5.. run scoreboard players set $timer coord_timer 0
scoreboard players add $timer coord_timer 1
```

#### update_all.mcfunction
각 플레이어의 좌표와 방위를 계산하여 보스바에 표시.

**방위 체계:**
| 방위 | 각도 범위 | 태그 |
|------|-----------|------|
| 북 (N) | 338° ~ 360°, 0° ~ 22° | `dir_n` |
| 북동 (NE) | 23° ~ 67° | `dir_ne` |
| 동 (E) | 68° ~ 112° | `dir_e` |
| 남동 (SE) | 113° ~ 157° | `dir_se` |
| 남 (S) | 158° ~ 202° | `dir_s` |
| 남서 (SW) | 203° ~ 247° | `dir_sw` |
| 서 (W) | 248° ~ 292° | `dir_w` |
| 북서 (NW) | 293° ~ 337° | `dir_nw` |

**표시 형식:**
```
[ 좌표 ] X: 123  Y: 64  Z: -456 | 북동 (NE)
```

**사용 scoreboard:**
- `pos_x`, `pos_y`, `pos_z` — 좌표 저장 (1000배율)
- `rotation` — 회전각 (-180~180)
- `direction` — 0~360 변환된 방위각
- `coord_timer` — 업데이트 타이머

---

### 2. regen_system (v1.0) — 이동 상태별 체력 회복

**파일:** `regen_system/`

#### 이동 상태 감지 로직 (detect_state.mcfunction)
1. **SLEEP (잠자기):** 20틱(1초)마다 ❤️ 1 회복 (허기 7↑)
2. **IDLE (서있기):** 60틱(3초)마다 ❤️ 1 회복 (허기 7↑)
3. **RUN (달리기):** 회복 없음, 타이머 리셋
4. **SWIM (수영):** 100틱(5초)마다 ❤️ 0.5 회복
5. **WALK (걷기):** 100틱(5초)마다 ❤️ 0.5 회복

**사용 scoreboard:**
- `regen_timer` — 상태별 회복 타이머
- `prev_x`, `prev_y`, `prev_z` — 이전 위치 (IDLE 감지용)
- `regen_tmp0~2` — 임시 좌표 저장
- `food_lvl` — 허기 레벨 확인

---

## 🐛 개발 기록 & 알려진 이슈

### 2026-05-02

#### [해결] 데이터팩 `Unknown function` 오류
- **증상:** 데이터팩이 `enabled`로 표시되지만 `function coords_display:load` 실행 시 `Unknown function` 발생
- **원인:** 1.21+부터 폴더명이 `functions/`(복수) → `function/`(단수)로 변경됨
- **해결:** `mv functions/ function/` 로 폴더명 변경
- **참고:** 태그 폴더도 동일 (`data/minecraft/tags/functions/` → `data/minecraft/tags/function/`)

#### [해결] `playsound` 명령어 문법 오류
- **증상:** `regen_system:regen_idle` 함수 로드 실패
- **오류 메시지:** `Incomplete (expected 3 coordinates) at position 121: ...player @s <--[HERE]`
- **원인:** 1.21+에서 `playsound` 명령어 문법에 좌표 인자(```~ ~ ~```)가 필수로 추가됨
- **수정 전:** `playsound entity.player.burp player @s 0.5 1`
- **수정 후:** `playsound entity.player.burp player @s ~ ~ ~ 0.5 1`

#### [해결] pack_format 불일치
- **증상:** pack_format 104로 설정 시 서버에서 "version newer than 81" 경고
- **원인:** 26.1.2의 pack_format은 **81** (104는 26.2 snapshot 이상)
- **해결:** pack_format 81로 변경, `min_format`/`max_format` 필드 제거

#### [해결] `initial-enabled-packs` 설정
- **증상:** 서버가 데이터팩을 `enabled`로 표시하지 않음
- **원인:** `initial-enabled-packs=vanilla`만 설정되어 있음
- **해결:** world/datapacks/에 데이터팩 배치 후 서버 재시작

---

## 🔧 서버 관리 명령어

```bash
# 서버 접속 (screen)
screen -r minecraft

# 서버 세션에서 나가기
Ctrl+A → D

# 서버 콘솔 명령어
# screen -S minecraft -X stuff "명령어^M"

# 데이터팩 리로드
# /reload

# 서버 종료
# /stop

# 서버 재시작
# screen -S minecraft -X stuff "stop^M" && sleep 5 && screen -DmS minecraft java -Xms1G -Xmx2G -jar server.jar nogui
```

## 🔗 GitHub 레포

| 레포 | 주소 | 내용 |
|------|------|------|
| **공개** | https://github.com/jh82130351/minecraft-vanilla-server | 데이터팩 + vanilla-mc 스킬 |
| **비공개** | https://github.com/jh82130351/openclaw-config | 전체 에이전트 설정 (AGENTS/MEMORY/TOOLS) |

### push 스크립트
```bash
scripts/vanilla-mc-push.sh    # 공개 레포 (데이터팩)
scripts/push-agent-config.sh  # 비공개 레포 (설정)
```

## 📜 라이선스

MIT License

#### [변경] 좌표 표시 액션바 → 보스바 전환
- **배경:** 데이터팩 2개가 동시에 액션바를 사용하면 충돌 발생 (regen_system도 액션바 사용 예정)
- **변경 전:** `title @s actionbar [...]` 로 액션바에 좌표 표시
- **변경 후:** `bossbar set minecraft:coords name [...]` 로 보스바에 좌표 표시
- **추가:** `load.mcfunction`에서 `bossbar add minecraft:coords`로 보스바 생성 + 설정
- **보스바 사양:** 초록색, 노치 스타일(notched_6), 최대값=1, 모든 플레이어에게 표시

#### [참고] `playsound` 문법 변경 상세
1.21+에서 `/playsound` 명령어의 문법이 변경되어 **소리 위치(좌표)가 필수**가 되었습니다.
```
# 1.20 이하 (선택적 위치)
playsound <sound> <source> <targets> [<volume>] [<pitch>]

# 1.21+ (위치 필수)
playsound <sound> <source> <targets> <pos> [<volume>] [<pitch>]
```
- `@s`로 자신에게 재생할 때도 `~ ~ ~` 좌표가 필요합니다.
- 영향을 받은 파일: `regen_system:regen_idle`

#### [참고] `function/` 폴더명 변경 히스토리
1.21 변경점은 아래와 같습니다:
- `data/<namespace>/functions/` → `data/<namespace>/function/`
- `data/minecraft/tags/functions/` → `data/minecraft/tags/function/`
- 함수 선언 태그(`load.json`, `tick.json`)도 마찬가지
- 26.1.2에서는 `function/`(단수) 폴더만 인식함

