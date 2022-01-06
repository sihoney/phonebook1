# phonebook1
html form, jsp를 활용한 phonebook


* jdbc 꼭 연결하기!
  * build path & deployment assembly
---
## GET과 POST의 차이

### HTTP
- 웹상에서 클라이언트와 서버 간에 요청/응답으로 데이터를 주고 받을 수 있는 프로토콜
- 클라이언트가 HTTP 프로토콜을 통해 서버에게 요청을 보내면 서버는 요청에 맞는 응답을 전송
- 이때, HTTP요청에 포함되는 "HTTP 메소드"는 서버가 요청을 수행하기 위해 해야할 행동을 
표시하는 용도로 사용

### GET
- 서버로부터 정보를 조회하기 위해 설계된 메소드
- 요청을 전송할 때 필요한 데이터를 BODY에 담지 않고, "쿼리스트링"을 통해 전송
- GET은 불필요한 요청을 제한하기 위해 요청이 캐시될 수 있습니다. 
  - 정적 컨텐츠(이미지, JS, CSS)는 데이터 양이 크고, 변경될 일이 적어서 반복해서 동일한 요청을 보낼 필요가 없습니다. 

### POST
- 리소스를 생성/변경하기 위해 설계
- GET과 달리 전송해야될 데이터를 HTTP 메세지의 BODY에 담아서 전송
  - HTTP 메세지의 BODY는 길이의 제한없이 데이터를 전송할 수 있다.
- POST로 요청을 보낼 때는 요청 헤더의 Content-Type에 요청 데이터의 타입을 표시해야 한다.
  - 데이터 타입을 표시하지 않으면 서버는 내용이나 URL에 포함된 리소스의 확장자명 등으로 데이터 타입 유추

### GET과 POST의 차이
- GET: 주로 조회할 때에 사용
- POST: 서버에 동일한 요청을 여러 번 전송해도 응답은 항상 다를 수 있습니다. 
  - 서버의 상태나 데이터를 변경시킬 때 사용됩니다.
  - POST는 생성, 수정, 삭제에 사용할 수 있지만, 생성에는 POST, 수정은 PUT OR PATCH, 삭제는 DELETE가 더 용도에 맞는 메소드
  
---
## request 객체 메소드
- getParameter(String param)
- getParameterValues(String param): 주어진 이름의 파라미터가 갖는 모든 값을 String 타입의 배열로 리턴한다.
- getParameterNames(): requeast 객체에 포함되어 있는 모든 파라미터의 이름을 Enumeration(열거형) 객체로 리턴한다.
