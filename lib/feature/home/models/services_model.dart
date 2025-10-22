class ServicesModel {
  final String image;
  final String title;
  ServicesModel({required this.image, required this.title});
}

final List<ServicesModel> services = [
  ServicesModel(image: 'assets/atm.webp', title: 'عمليات ATM'),
  ServicesModel(image: 'assets/bill.webp', title: 'ايداع بالكارت'),
  ServicesModel(image: 'assets/donation.webp', title: 'تبرعات'),
  ServicesModel(image: 'assets/elec.webp', title: 'كهرباء'),
  ServicesModel(image: 'assets/gas.webp', title: 'غاز'),
  ServicesModel(image: 'assets/instalments.webp', title: 'أقساط'),
  ServicesModel(image: 'assets/internet.webp', title: 'انترنت'),
  ServicesModel(image: 'assets/recharge.webp', title: 'الشحن'),
  ServicesModel(image: 'assets/school.png', title: 'مدارس'),
  ServicesModel(image: 'assets/water.webp', title: 'مياه'),
  ServicesModel(image: 'assets/wallet.webp', title: 'شحن كارت'),
  ServicesModel(image: 'assets/unver.jpg', title: 'رسوم جامعية'),
];
