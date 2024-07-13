//1008번 A/B
/*
문제
두 정수 A와 B를 입력받은 다음, A/B를 출력하는 프로그램을 작성하시오.

입력
첫째 줄에 A와 B가 주어진다. (0 < A, B < 10)

출력
첫째 줄에 A/B를 출력한다. 실제 정답과 출력값의 절대오차 또는 상대오차가 10-9 이하이면 정답이다.
*/
import 'dart:io';

void main() {
  String? input = stdin.readLineSync();

  if (input != null) {
    List<String> inputs = input.split(' ');

    if (inputs.length == 2) {
      int A = int.parse(inputs[0]);
      int B = int.parse(inputs[1]);

      print(A / B);
    } else {
      print('입력 형식이 잘못되었습니다.');
    }
  } else {
    print('입력이 없습니다.');
  }
}
