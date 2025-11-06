class ServicesModel {
  final String image;
  final String title;
  ServicesModel({required this.image, required this.title});
}

final List<ServicesModel> services = [
  // ServicesModel(image: 'assets/atm.webp', title: 'عمليات ATM'),
  // ServicesModel(image: 'assets/bill.webp', title: 'ايداع بالكارت'),
  // ServicesModel(image: 'assets/donation.webp', title: 'تبرعات'),
  ServicesModel(image: 'assets/electric.png', title: 'كهرباء'),
  ServicesModel(image: 'assets/gaz.png', title: 'غاز'),
  ServicesModel(image: 'assets/moneya.png', title: 'أقساط'),
  ServicesModel(image: 'assets/upand down.png', title: 'انترنت'),
  ServicesModel(image: 'assets/mobile.png', title: 'الشحن'),
  ServicesModel(image: 'assets/water.png', title: 'مياه'),
  ServicesModel(image: 'assets/mard.png', title: 'شحن كارت'),
  ServicesModel(image: 'assets/unversity.png', title: 'رسوم جامعية'),
];
