class ServicesModel {
  final String image;
  final String title;
  ServicesModel({required this.image, required this.title});
}

final List<ServicesModel> services = [
  ServicesModel(image: 'assets/atm.webp', title: 'Atm Transfer'),
  ServicesModel(image: 'assets/bill.webp', title: 'Pay Bill'),
  ServicesModel(image: 'assets/donation.webp', title: 'Donations'),
  ServicesModel(image: 'assets/elec.webp', title: 'Electricity'),
  ServicesModel(image: 'assets/gas.webp', title: 'Gas'),
  ServicesModel(image: 'assets/instalments.webp', title: 'Installments'),
  ServicesModel(image: 'assets/internet.webp', title: 'Internet'),
  ServicesModel(image: 'assets/recharge.webp', title: 'Recharge'),
  ServicesModel(image: 'assets/school.png', title: 'School'),
  ServicesModel(image: 'assets/water.webp', title: 'Water'),
  ServicesModel(image: 'assets/wallet.webp', title: 'Card Wallet'),
  ServicesModel(image: 'assets/unver.jpg', title: 'University'),
];
