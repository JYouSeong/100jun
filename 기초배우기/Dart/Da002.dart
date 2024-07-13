//1000번 A+B
/*
문제
두 정수 A와 B를 입력받은 다음, A+B를 출력하는 프로그램을 작성하시오.

입력
첫째 줄에 A와 B가 주어진다. (0 < A, B < 10)

출력
첫째 줄에 A+B를 출력한다.
*/

//VSCode에서는 import 'dart:io';가 인식이 안됨
// http://mobilelab.khu.ac.kr/wordpress/2020/06/22/be-dart-programmer-23/

//터미널 - powershell - cd 폴더 이동 - dart Da002.dart - 이후 콘솔값 입력
//위 과정으로 해결 가능

import 'dart:io';

void main() {
  // 입력을 받기 위해 stdin.readLineSync를 사용합니다.
  String? input = stdin.readLineSync();

  // 입력이 null이 아니면 실행합니다.
  if (input != null) {
    // 입력된 문자열을 공백을 기준으로 분리하여 리스트로 만듭니다.
    List<String> inputs = input.split(' ');

    // 리스트의 첫 번째와 두 번째 요소를 정수로 변환합니다.
    if (inputs.length == 2) {
      int A = int.parse(inputs[0]);
      int B = int.parse(inputs[1]);

      // 두 정수 A와 B의 합을 출력합니다.
      print(A + B);
    } else {
      print('입력 형식이 잘못되었습니다.');
    }
  } else {
    print('입력이 없습니다.');
  }
}
/*
Dart 언어에서 stdin과 stdout을 다루고자 한다면, 프로그램의 시작 부분에서 구문 필요

Stdout에 대해서 알아 보겠습니다. Dart 언어가 stdout을 위해서 제공하는 많은 기능 중에서 가장 기본적인 함수(메소스) 들은 다음과 같습니다 .

stdout.write(object): 하나의 입력 파라메타(객체, object)를 받아서 화면에 출력하는 가장 간단한 기능
stdout.writeln(object): 하나의 입력 파라메타(객체, object)를 받아서 화면에 출력하는 기능에 추가해서, obejct 출력후 줄바꿈 기능(‘\n’)을 수행함 
stdout.writeAll(object[s]): 리스트와 같이 복수의 값을 갖는 입력 파라메타를 받아서, 복수의 값들을 하나 하나 출력하는 기능을 수행함. 추가적으로 (필수가 아닌 optional 한 값을 주면) 값들 사이에 개발자가 희망하는 기호 출력이 가능함 
Stdin에 대해서 알아 보겠습니다. Dart 언어가 stdin을 위해서 제공하는 많은 기능 중에서 여기서는 하나의 함수(메소드) 만을 설명하도록 하겠습니다.

stdin.readLineSync(): 사용자가 엔터키를 입력하기 전까지의 내용을 키보드로 부터 받아서, 문자열 형태로 return 함 

*/