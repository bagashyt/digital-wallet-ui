class AllContact {
  String name;
  String accountBank;
  String image;
  String phone;

  AllContact(
      {required this.name,
      required this.accountBank,
      required this.image,
      this.phone = ''});
}

var allContactList = [
  AllContact(
      name: 'Andrea Summer',
      accountBank: 'Bank - 0987 3422 8756',
      image: 'images/andrea_summer.png',
      phone: '0821 - 7654 - 3210'),
  AllContact(
      name: 'Karen William',
      accountBank: 'Bank - 0987 3422 8756',
      image: 'images/karen_william.png',
      phone: '0821 - 7654 - 3210'),
  AllContact(
      name: 'Thomas Wise ',
      accountBank: 'Bank - 0987 3422 8756',
      image: 'images/thomas_wise.png',
      phone: '0821 - 7654 - 3210'),
];
