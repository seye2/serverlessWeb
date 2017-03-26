# 1번에서 만든 hello world를 apex로 람다 생성 및 배포 설정

## 실행 방법

apex는 기본적으로 functions폴더 내에 있는 폴더명을 기준으로 Lambda 함수명으로 지정된다.
그리고 배포시 functions폴더 밑에 있는 폴더들을 람다로 배포한다.

그리고 project.json파일을 생성하여
{
  "name": "hello",
  "description": "Node.js example project",
  "role": "arn:aws:iam::448067002058:role/lambda",
  "memory": 512
}

위와 같이 작성한다.

name은 람다 함수명 prefix로 지정된다.
description은 Lambda에 대한 설명이다.
role은 Lambda가 실행될 role을 지정한다.
memory는 람다가 실행하는데 필요한 메모리 지정이다.

위와 같이하여 apex deploy를 실행하면 hello_world라는 Lambda함수가 실행된다.

apex init으로 실행을 하면 IAM ROLE이 매번 생성되어 관리하기 어려운 어려움이 있다.
그래서 위와같이 functions폴더 및 project.json파일을 수동으로 생성하여 바로 apex deploy를 실행하면
role이나 policy자동 생성없이 기존롤을 지정하여 배포 및 실행 가능하다.

```
npm run server
```

npm run server실행 시 build.bat배치 파일 실행

 - build.bat

 ```
 del /s /q c:\project\serverlessWeb\2.Lambda\functions\world\*                                                      #functions\world 내 파일 삭제
 rmdir /s /q c:\project\serverlessWeb\2.Lambda\functions\world\node_modules                                         #node_modules 폴더 삭제

 copy c:\project\serverlessWeb\2.Lambda\app.js c:\project\serverlessWeb\2.Lambda\functions\world\app.js             #app.js를 functions\world 로 복사
 copy c:\project\serverlessWeb\2.Lambda\index.js c:\project\serverlessWeb\2.Lambda\functions\world\index.js         #index.js를 functions\world 로 복사
 copy c:\project\serverlessWeb\2.Lambda\package.json c:\project\serverlessWeb\2.Lambda\functions\world\package.json #package.json를 functions\world 로 복사

 cd c:\project\serverlessWeb\2.Lambda\functions\world
 yarn && cd c:\project\serverlessWeb\2.Lambda && apex deploy                                                        #yarn으로 package.json설치 후 apex deploy로 functions\world 내 파일을 압축하여 Lambda로 배포
```

위의 내용을 거친 후
apex invoke world라는 함수명을 지정하여 invoke하면 원격으로 실행된 람다 함수의 결과를 로컬에서 확인 가능하다.(성공이나 실패에 관련된 메세지)

apex deploy를 실행하면 아래와 같이 current로 생성된다.

<img src="http://pds21.egloos.com/pds/201703/26/38/e0015438_58d796b7694c1.png" />



