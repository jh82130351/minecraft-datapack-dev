# 마인크래프트 바닐라 서버 🎮

**Minecraft 26.1.2 바닐라 서버** — 데이터팩 기반 기능 개발

## 🚀 서버 정보

| 항목 | 내용 |
|------|------|
| **버전** | Minecraft 26.1.2 (안정) |
| **엔진** | 바닐라 (Mojang 공식) |
| **포트** | 25565 |
| **외부 접속** | `richard-lay.gl.joinmc.link` |
| **터널링** | playit.gg |
| **온라인 모드** | ✅ (정품만 접속 가능) |

## 👥 협업 체계

| 역할 | 담당 | 책임 |
|------|------|------|
| 🧑‍💼 **기획** | **정현** | 기능 결정, 최종 승인 |
| 🤖 **감독** | **클로드** | 데이터팩 구조 설계 및 코드 검토 |
| 🔺 **개발자** | **세모** | 서버 운영/관리, GitHub push/pull |

## 📦 데이터팩

| 데이터팩 | 설명 |
|----------|------|
| `coords_display` | 플레이어 좌표와 속도를 사이드바에 표시 |
| `regen_system` | 이동 상태(서기/걷기/수영/잠자기)별 체력 회복 |

### 데이터팩 구조
```
datapacks/
├── coords_display/
│   ├── pack.mcmeta
│   └── data/coords_display/functions/
│       ├── load.mcfunction
│       ├── tick.mcfunction
│       └── update_all.mcfunction
└── regen_system/
│   ├── pack.mcmeta
│   └── data/regen_system/functions/
│       ├── load.mcfunction
│       ├── tick.mcfunction
│       ├── detect_state.mcfunction
│       ├── regen_sleep.mcfunction
│       ├── regen_idle.mcfunction
│       ├── regen_walk.mcfunction
│       └── regen_swim.mcfunction
```

## 📋 작업 내역 (2026-05-02)

### 워크스페이스 전면 개편
- Paper 잔재 전부 제거 → 바닐라 서버로 전환
- workspace 구조 단순화: docs/, tunnel/, minecraft_core/ 분류
- 불필요 파일/스크립트/프로젝트 전부 삭제

### 서버 설치
- Minecraft 26.1.2 안정 버전 다운로드 (SHA1: `97ccd4c0ed3f81bbb7bfacddd1090b0c56f9bc51`)
- eula.txt 동의, server.properties 기본 설정
- `screen -DmS minecraft` 방식으로 실행
- playit.gg 터널 연결 (`richard-lay.gl.joinmc.link`)

### 알려진 이슈
- 26.1.2에서 pack_format은 **81**입니다 (기존 데이터팩도 pack_format 81로 조정 필요)

## 🔗 GitHub 레포

- **공개 (이 레포):** 데이터팩 + 스킬 (`vanilla-mc`)
- **비공개 (`openclaw-config`):** 전체 에이전트 설정 (AGENTS/MEMORY/TOOLS 등)

## 📜 라이선스

MIT License
