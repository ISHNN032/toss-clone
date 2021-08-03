import 'dart:ui';
import 'package:lottie/lottie.dart';

class BenefitItem {
  String title;
  String info;
  String buttonInfo;
  LottieBuilder lottie;
  Color backgoundColor;

  BenefitItem(
      this.title, this.info, this.buttonInfo, this.lottie, this.backgoundColor);
}

List<BenefitItem> getBenefitItems() {
  return <BenefitItem>[
    BenefitItem("좋아하는 브랜드에서\n캐시백 받으세요", "", "캐시백 받기",
        Lottie.asset('assets/locked.json'),
        Color.fromRGBO(25, 31, 43, 1)),

    BenefitItem("이번 주 미션 도착!\n최대 0원을 받으세요", "0명이 미션을 성공했어요", "0원 받기",
        Lottie.asset('assets/notebook.json'),
        Color.fromRGBO(25, 33, 36, 1)),

    BenefitItem("누를 때 마다 -10원!\n머니 버튼을 눌러볼까요?", "1명이 버튼을 눌러대는 중", "누르러 가기",
        Lottie.asset('assets/magnet-cell.json'),
        Color.fromRGBO(36, 35, 33, 1)),

    BenefitItem("주변 서버 개발자 분들에게\n도와달라고 전해주세요", "", "도움 주기",
        Lottie.asset('assets/notifications.json'),
        Color.fromRGBO(37, 31, 45, 1)),

    BenefitItem("지원금 주시면\n무한한 감사를 받아요", "", "용돈 주기",
        Lottie.asset('assets/money.json'),
        Color.fromRGBO(25, 31, 43, 1)),
  ];
}
