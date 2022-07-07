# 가치코딩 - Gachicoding_DevOps
> 개발 관련 정보 공유, 관련 지식을 묻고 답하는 웹 커뮤니티 서비스 <br>

## 목차
* [저장소](#저장소)
* [참여 인원 및 역할](#참여-인원-및-역할)
* [사용 기술](#사용-기술)
* [ERD](#erd)
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
* aws vault

[//]: # (<br>)

[//]: # ()
[//]: # (## 서버 구조도)

<br>

## ERD
#### 2022.06.05 업데이트 
- auth : 기본키 binary(16)으로 변경, 만료여부 컬럼 추가 
- comment : 기본키 AI 설정, parents_idx null 허용

![가치코딩 ERD](document/ERD.png)
<br>

## 주요 기능

<br>

## 프로젝트 이슈 정리
* [Spring Security를 이용한 CORS 정책 설정](https://bool-flower.tistory.com/14)
* [사용자 인증을 위한 메일 API 개발 과정](https://bool-flower.tistory.com/19)
  
<br>


[//]: # (## 주요 이슈 및 트러블슈팅)

[//]: # (* Spring Data JPA - [DynamicInsert,DynamicUpdate 어노테이션의 용도&#40;작성 전&#41;]&#40;&#41;)

[//]: # (* UnexpectedRollbackException - [아이디&#40;이메일&#41; 중복처리에서 @Transactional 에 의한 롤백 예외 발생&#40;작성 전&#41;]&#40;&#41;)

[//]: # (* Spring Security & OAuth2 - [로그인 연동&#40;구글, 카카오, 깃허브&#41;시 기존 아이디와 중복 처리&#40;작성 전&#41;]&#40;&#41;)

[//]: # (* AWS Access Denied - [IAM 계정으로 로그인 시 RDS 접근이 안되는 현상&#40;작성 전&#41;]&#40;&#41;)

[//]: # (* WebMvcConfigurationSupport - [스웨거, pageable 사용을 위해 해당 클래스를 상속받아 오버라이딩&#40;작성 전&#41;]&#40;&#41;)
