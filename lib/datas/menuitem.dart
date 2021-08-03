import 'package:flutter/material.dart';

class MenuItem {
  IconData icon;
  String title;
  MenuTag tag;

  MenuItem(this.icon, this.title, this.tag);
}

enum MenuItemHeader{ LATELY, NEWLY, STUDENT, LOAN, INSURANCE, REMIT, ACCOUNT, CREDIT, CARD, CAR, ESTATE, BENEFIT, LIFE, BOSS }
enum MenuTag{ NONE, NEW, EVENT, UPDATE }

List<MenuItem> getMenuItemList(MenuItemHeader header) {
  switch(header){
    case MenuItemHeader.LATELY:
    return <MenuItem>[
      MenuItem(Icons.credit_card, "학자금 이자 지원받기", MenuTag.NONE),
      MenuItem(Icons.credit_card, "신용카드 혜택 추천", MenuTag.NONE),
      MenuItem(Icons.credit_card, "내 계좌", MenuTag.NONE),
    ];
    case MenuItemHeader.NEWLY:
      return <MenuItem>[
        MenuItem(Icons.send, "평생 무료로 송금하기", MenuTag.NEW),
      ];
    case MenuItemHeader.STUDENT:
      return <MenuItem>[
        MenuItem(Icons.search, "숨은 장학금 찾기", MenuTag.NONE),
        MenuItem(Icons.money, "학자금대출 계산기", MenuTag.NONE),
        MenuItem(Icons.assignment_late, "국가장학금 계산기", MenuTag.NONE),
        MenuItem(Icons.assignment_late, "학자금 이자 지원받기", MenuTag.NONE),
      ];
    case MenuItemHeader.LOAN:
      return <MenuItem>[
        MenuItem(Icons.local_activity, "비상금 빌리기", MenuTag.NONE),
        MenuItem(Icons.credit_card, "카드 대출", MenuTag.EVENT),
      ];
    case MenuItemHeader.INSURANCE:
      return <MenuItem>[
        MenuItem(Icons.search, "내 보험", MenuTag.NONE),
        MenuItem(Icons.person_add_alt_1, "나만의 보험 전문가", MenuTag.NONE),
        MenuItem(Icons.add_box, "병원비 돌려받기", MenuTag.NONE),
        MenuItem(Icons.search, "숨은 보험금 찾기", MenuTag.NONE),
        MenuItem(Icons.umbrella, "보험 돌려받기", MenuTag.NONE),
        MenuItem(Icons.add_to_queue, "무료 보험 받기", MenuTag.EVENT),
      ];
    case MenuItemHeader.REMIT:
      return <MenuItem>[
        MenuItem(Icons.flash_on, "송금", MenuTag.NONE),
        MenuItem(Icons.camera_alt, "사진으로 송금", MenuTag.NONE),
        MenuItem(Icons.attach_money, "더치페이", MenuTag.NONE),
        MenuItem(Icons.check_box, "자동이체", MenuTag.NONE),
      ];
    case MenuItemHeader.ACCOUNT:
      return <MenuItem>[
        MenuItem(Icons.card_membership, "내 계좌", MenuTag.NONE),
        MenuItem(Icons.card_membership, "계좌 만들기", MenuTag.NONE),
        MenuItem(Icons.people, "돈 같이 모으기", MenuTag.NONE),
        MenuItem(Icons.attach_money, "비상금 모으기", MenuTag.NONE),
        MenuItem(Icons.fastfood, "버거값 모으기", MenuTag.NONE),
      ];
    case MenuItemHeader.CREDIT:
      return <MenuItem>[
        MenuItem(Icons.credit_score, "신용", MenuTag.NONE),
        MenuItem(Icons.credit_score, "신용점수 올리기", MenuTag.NONE),
      ];
    case MenuItemHeader.CARD:
      return <MenuItem>[
        MenuItem(Icons.credit_card, "내 카드", MenuTag.NONE),
        MenuItem(Icons.credit_card, "카드 알림", MenuTag.NONE),
        MenuItem(Icons.credit_card, "숨은 카드 포인트 찾기", MenuTag.NONE),
        MenuItem(Icons.credit_card, "신용카드 혜택 추천", MenuTag.NONE),
        MenuItem(Icons.credit_card, "체크카드 혜택 추천", MenuTag.NONE),
        MenuItem(Icons.credit_card, "토스신용카드 만들기", MenuTag.NONE),
      ];
    case MenuItemHeader.CAR:
      return <MenuItem>[
        MenuItem(Icons.directions_car_rounded, "내 차 시세", MenuTag.NONE),
        MenuItem(Icons.directions_car_rounded, "차 보험료 계산기", MenuTag.NONE),
        MenuItem(Icons.directions_car_rounded, "내 차 팔기", MenuTag.EVENT),
      ];
    case MenuItemHeader.ESTATE:
      return <MenuItem>[
        MenuItem(Icons.house, "내 부동산 시세조회", MenuTag.NONE),
        MenuItem(Icons.apartment, "주택 청약 일정", MenuTag.NONE),
        MenuItem(Icons.apartment, "내 아파트 관리비", MenuTag.NONE),
      ];
    case MenuItemHeader.BENEFIT:
      return <MenuItem>[
        MenuItem(Icons.directions_walk, "만보기", MenuTag.NONE),
        MenuItem(Icons.chat_bubble_outlined, "토스프라임", MenuTag.UPDATE),
        MenuItem(Icons.card_giftcard, "카드 이벤트 상품", MenuTag.NONE),
      ];
    case MenuItemHeader.LIFE:
      return <MenuItem>[
        MenuItem(Icons.qr_code, "QR 체크인", MenuTag.NEW),
        MenuItem(Icons.arrow_drop_down_circle, "내 문서함", MenuTag.NONE),
        MenuItem(Icons.arrow_drop_down_circle, "내 토스아이디", MenuTag.NONE),
        MenuItem(Icons.arrow_drop_down_circle, "내 토스 인증서", MenuTag.NONE),
        MenuItem(Icons.arrow_drop_down_circle, "내 구독 서비스", MenuTag.NONE),
        MenuItem(Icons.arrow_drop_down_circle, "국민연금 계산기", MenuTag.NONE),
        MenuItem(Icons.arrow_drop_down_circle, "광고 전화 차단하기", MenuTag.NONE),
        MenuItem(Icons.arrow_drop_down_circle, "숨은 정부지원금 찾기", MenuTag.NONE),
        MenuItem(Icons.arrow_drop_down_circle, "상품권 구매하기", MenuTag.NONE),
        MenuItem(Icons.arrow_drop_down_circle, "ATM 현금 찾기", MenuTag.NONE),
        MenuItem(Icons.arrow_drop_down_circle, "환전", MenuTag.NONE),
        MenuItem(Icons.arrow_drop_down_circle, "오늘의 머니 팁", MenuTag.NONE),
        MenuItem(Icons.arrow_drop_down_circle, "정치후원금 보내기", MenuTag.NONE),
      ];
    case MenuItemHeader.BOSS:
      return <MenuItem>[
        MenuItem(Icons.list_alt_outlined, "내 매출 장부", MenuTag.NONE),
        MenuItem(Icons.motorcycle, "배달 매출 늘리기", MenuTag.NONE),
        MenuItem(Icons.add_alert, "세금계산서 알림받기", MenuTag.NONE),
        MenuItem(Icons.credit_card, "숨은 카드매출 찾기", MenuTag.NONE),
        MenuItem(Icons.money, "세금계산서 발행하기", MenuTag.NONE),
      ];
  }
}
