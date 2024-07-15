//10699번 오늘 날짜
/*
문제
서울의 오늘 날짜를 출력하는 프로그램을 작성하시오.

입력
입력은 없다.

출력
서울의 오늘 날짜를 "YYYY-MM-DD" 형식으로 출력한다.
*/

void main() {
  // 현재 UTC 시간을 얻습니다.
  DateTime nowUtc = DateTime.now().toUtc();

  // KST는 UTC+9이므로, UTC 시간에 9시간을 더해줍니다.
  DateTime nowKst =
      nowUtc.add(Duration(hours: 9)); //nowKst : 2018-03-21 14:07:38.000

  print("${nowKst.year}-${nowKst.month}-${nowKst.day}");
}
