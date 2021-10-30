class Transaction {
  String name;
  String image;
  String price;
  String merchant;
  Transaction(
      {required this.name,
      required this.image,
      required this.price,
      required this.merchant});
}

var transactionList = [
  Transaction(
      name: 'Grocery',
      image: 'images/grocery_icon.png',
      merchant: 'Minimarket Anugerah',
      price: '326.800'),
  Transaction(
      name: 'Entertaiment',
      image: 'images/entertaiment_icon.png',
      merchant: 'Football Game',
      price: '326.800'),
  Transaction(
      name: 'Equipment',
      image: 'images/equipment_icon.png',
      merchant: 'DSLR Camera',
      price: '326.800'),
  Transaction(
      name: 'Office Items',
      image: 'images/office_item_icon.png',
      merchant: 'Stationary',
      price: '326.800'),
];
