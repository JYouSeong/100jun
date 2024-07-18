//10817번 세 수
/*
문제
세 정수 A, B, C가 주어진다. 이때, 두 번째로 큰 정수를 출력하는 프로그램을 작성하시오. 

입력
첫째 줄에 세 정수 A, B, C가 공백으로 구분되어 주어진다. (1 ≤ A, B, C ≤ 100)

출력
두 번째로 큰 정수를 출력한다.
*/
import 'dart:io';
import 'dart:math';

void main() {
  String? integer = stdin.readLineSync();

  if (integer != null) {
    List<String> integers = integer.split(' ');
    if (integers.length == 3) {
      int A = int.parse(integers[0]);
      int B = int.parse(integers[1]);
      int C = int.parse(integers[2]);
      max(min(A, B), C) > max(min(C, B), A)
          ? print(max(min(C, B), A))
          : print(max(min(A, B), C));
    }
  }
}
