class ShortcutMenu {
  String title;
  String images;

  ShortcutMenu({
    required this.title,
    required this.images,
  });
}

var shortcutMenuList = [
  ShortcutMenu(title: 'Transfer', images: 'images/transfer_icon.png'),
  ShortcutMenu(title: 'Top-Up', images: 'images/topup_icon.png'),
  ShortcutMenu(title: 'Bill', images: 'images/bill_icon.png'),
  ShortcutMenu(title: 'More', images: 'images/more_icon.png'),
];
