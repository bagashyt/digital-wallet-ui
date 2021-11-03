class RecentContact {
  String name;
  String accountBank;
  String image;

  RecentContact(
      {required this.name, required this.accountBank, required this.image});
}

var recentContactList = [
  RecentContact(
      name: 'Samantha',
      accountBank: 'Bank - 0987 3422 8756',
      image: 'images/samantha.png'),
  RecentContact(
      name: 'Rose Hope',
      accountBank: 'Bank - 0987 3422 8756',
      image: 'images/rose_hope.png'),
  RecentContact(
      name: 'Angela Smith',
      accountBank: 'Bank - 0987 3422 8756',
      image: 'images/angela_smith.png'),
];
