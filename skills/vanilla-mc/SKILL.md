---
name: vanilla-mc
description: "마인크래프트 바닐라 서버 (26.2-snapshot-5) 데이터팩 기반 기능 개발. Paper→바닐라 전환. 커스텀 함수, 스코어보드, 태그 시스템으로 플러그인 기능 구현. 정현(기획)→클로드(감독)→세모(개발자) 3인 협업."
---

# 마인크래프트 바닐라 서버

**버전:** 26.2 Snapshot 5  
**서버:** Paper 1.21.11 → 바닐라 전환  
**외부 접속:** `richard-lay.gl.joinmc.link` (playit 터널)

## 프로젝트 목표
Paper 플러그인 없이 **데이터팩 + 함수(mcfuntion) + 스코어보드**로 모든 기능 구현

## 필요한 기능 목록 (TODO)

| # | 기능 | 상태 | 참고 |
|---|------|------|------|
| 1 | 좌표 & 속도 사이드바 | 📦 기본 구현 | `coords_display` |
| 2 | | 🔲 | |
| 3 | | 🔲 | |
| 4 | | 🔲 | |

## 데이터팩 구조

```
datapacks/<name>/
├── pack.mcmeta
├── data/
│   ├── <namespace>/
│   │   └── functions/
│   │       ├── load.mcfunction    # 최초 1회 실행
│   │       ├── tick.mcfunction    # 매 틱 실행
│   │       └── <etc>.mcfunction
│   └── minecraft/
│       └── tags/
│           └── functions/
│               ├── load.json
│               └── tick.json
```

### pack.mcmeta 포맷 (26.2 호환)
```json
{
  "pack": {
    "pack_format": 104,
    "min_format": 104,
    "max_format": 104
  }
}
```

## 협업 워크플로우
1. 정현이 기획/요청
2. 클로드가 설계 및 스펙 정의
3. 세모가 데이터팩 구현 및 서버 적용

## 참고
- RCON: 포트 25575 (프로토콜 26.2에서 변경됨, 현재 미사용)
- 화면 명령어: screen -S minecraft -X stuff "..."
