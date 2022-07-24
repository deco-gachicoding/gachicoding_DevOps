# 가치코딩 - Gachicoding_DevOps
> 개발 관련 정보 공유, 관련 지식을 묻고 답하는 웹 커뮤니티 서비스 <br>

## 목차
* [참여 인원 및 역할](#참여-인원-및-역할)
* [저장소](#저장소)
* [사용 기술](#사용-기술)
* [인프라 아키텍처](#인프라-아키텍처)
* [주요 변경사항](#주요-변경사항)
* [주요 기능](#주요-기능)
* [프로젝트 이슈 정리](#프로젝트-이슈-정리)

[//]: # (* [프로젝트 관련 내용 정리]&#40;#프로젝트-관련-내용-정리&#41;)
[//]: # (* [서버 구조도]&#40;#서버-구조도&#41;)

<br>

## 참여 인원 및 역할

[//]: # (* 2022년 3월 ~ ing)
* [김인표](https://github.com/kiminpyo) - Frontend
* [김인환](https://github.com/inhwanK) - Backend
* [서영준](https://github.com/95Seo) - Backend
* [배지왕](https://github.com/BAE-JI-WANG) - DevOps
* [김세현](https://github.com/saehyen) - DevOps

<br>

## 저장소
* [백엔드 저장소 (현재 저장소)](https://github.com/inhwanK/gachicoding)
* [프론트엔드 저장소](https://github.com/kiminpyo/gachicoding-front-next)
* [DevOps 저장소](https://github.com/BAE-JI-WANG/gachicoding_DevOps)

<br>

## 사용 기술
* aws
* terraform 1.1.7
* aws vault 6.5.0-Homebrew

[//]: # (<br>)

[//]: # ()
[//]: # (## 서버 구조도)
## 인프라 아키텍처

### 테스트용 인프라 서버
![Gachi_testServer](https://user-images.githubusercontent.com/59479926/177695397-777fa871-d008-4e9e-b627-4b4e4e7ee1ab.png)
---

### Infra Ver 1.0
![Gachi_Infra_V1 0 drawio](https://user-images.githubusercontent.com/59479926/180384108-3abff3c2-0dd9-403b-a683-9a8c60f62db0.png)

--- 
### 1차 협의후 인프라
![Gachi_Infra_V1 1 1 drawio](https://user-images.githubusercontent.com/59479926/180629242-77b8d59f-a88c-4008-a032-43a8b06068ab.png)

1. 프론트엔드를 S3에 탑재 하기로 결정 (비용문제)
2. 로드밸런서와 오토스케일링 그룹을 백엔드로 이동 (프론트에는 현재 규모에서 불필요하다 판단 & 1차 인프라에서 백엔드에서 빼먹음)
3. RDB서비스를 Paas에서 IaaS로 변경 (비용문제)
4. CDN 서비스 추가 (프론트엔드의 HTTPS 배포) -> Resource 버킷의 경우 비용문제에 부딪혀 아직 고민중

## 주요 변경사항

#### 2022.07.07 업데이트 
- comment : 팀 레포지토리로 권한 변경

<br>

## 주요 기능

<br>

## 프로젝트 이슈 정리

