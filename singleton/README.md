# singleton

다중 쓰레드 작업 시 `uniqInstance`가 여러 인스턴스를 가리킬 수 있는 문제가 있다.
이를 해결하기 위한 
 - 'volatile' 변수 설정: 변수를 캐시가 아니라 메모리에서만 읽도록 설정.
 - atomic task 설정: `getInstance` 메소드는 실행 중간에 다른 쓰레드가 끼어들 수
   없다.
 - Double-checked locking을 어떻게 구현할지 생각해 봐야 한다. 
