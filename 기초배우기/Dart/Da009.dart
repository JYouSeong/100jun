//2588 곱셈
/*
문제
(세 자리 수) × (세 자리 수)는 다음과 같은 과정을 통하여 이루어진다.



(1)과 (2)위치에 들어갈 세 자리 자연수가 주어질 때 (3), (4), (5), (6)위치에 들어갈 값을 구하는 프로그램을 작성하시오.

입력
첫째 줄에 (1)의 위치에 들어갈 세 자리 자연수가, 둘째 줄에 (2)의 위치에 들어갈 세자리 자연수가 주어진다.

출력
첫째 줄부터 넷째 줄까지 차례대로 (3), (4), (5), (6)에 들어갈 값을 출력한다.
*/
import 'dart:io';

void main() {
  // 첫 번째 세 자리 자연수 입력받기
  String? input = stdin.readLineSync();
  if (input != null) {
    int A = int.parse(input);

    // 두 번째 세 자리 자연수 입력받기
    input = stdin.readLineSync();
    if (input != null) {
      int B = int.parse(input);

      // B의 일의 자리와 A의 곱
      int L3 = A * (B % 10);
      // B의 십의 자리와 A의 곱
      int L4 = A * ((B ~/ 10) % 10);
      // B의 백의 자리와 A의 곱
      int L5 = A * (B ~/ 100);
      // A와 B의 곱
      int L6 = A * B;

      // 결과 출력
      print(L3);
      print(L4);
      print(L5);
      print(L6);
    }
  }
}

//2개 이상 입력값을 각각 받아 해야하면 2중if문으로 해결