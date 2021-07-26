class NavigationItem {

  String title;

  NavigationItem(this.title);

}

List<NavigationItem> getNavigationItemList(){
  return <NavigationItem>[
    NavigationItem("홈"),
    NavigationItem("내 소비"),
    NavigationItem("혜택"),
    NavigationItem("주식"),
    NavigationItem("전체"),
  ];
}