# 이전 글에서 만든 hello world를 apex로 alias별 람다 생성 및 배포 설정

## 실행 방법

alias별 람다 배포

stage와 prod 두 단계로 나누어서 소스를 배포하려고한다.

stage는 테스트 혹은 QA진행 시 관리할 소스
prod는 실제 배포 후 관리할 소스이다.

'''
npm run stage
'''

alias:stage가 생성된다.


'''
npm run prodr
'''

alias:prod가 생성된다.


