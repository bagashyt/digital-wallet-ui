class OtherMenu {
  String title;
  String images;

  OtherMenu({
    required this.title,
    required this.images,
  });
}

var otherMenuList = [
  OtherMenu(
      title: 'History Transaction',
      images: 'images/history_transaction_icon.png'),
  OtherMenu(
      title: 'Request Payment', images: 'images/request_payment_icon.png'),
  OtherMenu(title: 'Setting', images: 'images/setting_icon.png'),
  OtherMenu(title: 'Help', images: 'images/help_icon.png'),
];
