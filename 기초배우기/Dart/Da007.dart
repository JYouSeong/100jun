//10430 나머지
/*
문제
(A+B)%C는 ((A%C) + (B%C))%C 와 같을까?

(A×B)%C는 ((A%C) × (B%C))%C 와 같을까?

세 수 A, B, C가 주어졌을 때, 위의 네 가지 값을 구하는 프로그램을 작성하시오.

입력
첫째 줄에 A, B, C가 순서대로 주어진다. (2 ≤ A, B, C ≤ 10000)

출력
첫째 줄에 (A+B)%C, 둘째 줄에 ((A%C) + (B%C))%C, 셋째 줄에 (A×B)%C, 넷째 줄에 ((A%C) × (B%C))%C를 출력한다.
*/

import 'dart:io';

void main() {
  String? input = stdin.readLineSync();

  if (input != null) {
    List<String> inputs = input.split(' ');

    if (inputs.length == 3) {
      int A = int.parse(inputs[0]);
      int B = int.parse(inputs[1]);
      int C = int.parse(inputs[2]);

      print((A + B) % C);
      print(((A % C) + (B % C)) % C);
      print((A * B) % C);
      print(((A % C) * (B % C)) % C);
    } else {
      print('입력 형식이 잘못되었습니다.');
    }
  } else {
    print('입력이 없습니다.');
  }
}
