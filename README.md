## Web Link : http://itwill.xyz/jeju/

## Final project 목적
학습한 기술들을 활용한 웹사이트 구축<br>
참고사이트: 제주 올레 ( https://www.jejuolle.org/trail/kor/ )

## Team 개요
### 개발환경
- Java, HTML, CSS, JavaScript, jQuery, Ajax
- Oracle DB
- Spring, MyBatis
- SVN

### Team Role
- 문재욱 - 제주 올레 프로그램 스케쥴
- 이정환 - FAQ
- 하동구 - 커뮤니티
- 류남규 - 메인페이지, 템플릿 CSS
- 김세린 - 회원 시스템
- 박찬혁 - 관리자페이지

### 프로그램 스케쥴 CRUD 구현
- 테이블 구성 : 프로그램,  스케쥴,  참가자,  스케쥴관련 댓글  
- 프로그램 테이블은 디폴트 값으로 설정하고 스케쥴 테이블을 기준으로 여러 DB 값들에 대한 CRUD 기능을 구현

### 참고사항 (참고사이트와 비교)
- 기존 : 달력 변동 시 페이지 이동(쿼리스트링)<br>
   -> Ajax 를 통해 동적페이지로 구성

- 기존 : 대댓글 작성시 대댓글 창의 접힘기능 없음
  -> JS의 'classList.toggle()'을 사용하여 접힘기능 

<br>

## Table ERD
![table_erd](https://user-images.githubusercontent.com/84655268/136691691-6bc1aa9f-07ae-48e6-886c-dbc0a196cac6.png)



