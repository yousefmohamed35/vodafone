import 'package:flutter/material.dart';
import 'package:vodafon/core/extension/to_arabic_number.dart';
import 'package:vodafon/core/helper/cashe_helper.dart';
import 'package:vodafon/feature/home/presentation/view/home_view.dart';

class UselessView extends StatefulWidget {
  const UselessView({super.key});

  @override
  State<UselessView> createState() => _UselessViewState();
}

class _UselessViewState extends State<UselessView> {
  late final String phone;
  @override
  void initState() {
    super.initState();
    getPhone();
  }

  Future<void> getPhone() async {
    phone = await SharedPrefHelper.getString('phone') ?? '';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Image.asset("assets/voda.png", height: 65),
              const SizedBox(height: 25),
              const Text(
                "ماتخليش حاجة تفوتك",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "إكتشف كل عروضنا وخدماتنا الحصرية من غير ما\nتستهلك من باقتك",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 30),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeView()),
                  );
                },
                child: Container(
                  height: 180,
                  width: 130,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "إستمرار",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        "الشريحة\n$phone".toArabicNumbers,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          height: 1.4,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 70,
                        width: 45,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(
                          Icons.sim_card,
                          size: 40,
                          color: Colors.amber,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.person, size: 22, color: Colors.grey),
                      SizedBox(width: 8),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "يمكنك إضافة حتى 5 حسابات",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[800],
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            Text(
                              "بالإضافة للشريحة",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey[800],
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "أضف حساب جديد >",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
