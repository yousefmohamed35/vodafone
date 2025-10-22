import 'package:flutter/material.dart';

import 'transaction_tab_bar.dart';

class HeadAnimatedTransaction extends StatefulWidget {
  const HeadAnimatedTransaction({
    super.key,
    required this.selectedIndex,
    required this.onTap,
  });
  final int selectedIndex;
  final ValueChanged<int> onTap;
  @override
  State<HeadAnimatedTransaction> createState() =>
      _HeadAnimatedTransactionState();
}

class _HeadAnimatedTransactionState extends State<HeadAnimatedTransaction>
    with TickerProviderStateMixin {
  double _height = 0;
  double _offsetY = -100;
  bool _showChildren = false;

  @override
  void initState() {
    super.initState();
    // Delay the start of the animation a bit for effect
    Future.delayed(const Duration(milliseconds: 300), () {
      setState(() {
        _height = 200;
        _offsetY = 0;
      });

      // Show children after container animation finishes
      Future.delayed(const Duration(seconds: 1), () {
        setState(() {
          _showChildren = true;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      //curve: Curves.fastOutSlowIn,
      transform: Matrix4.translationValues(0, _offsetY, 0),
      height: _height,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(60),
          bottomRight: Radius.circular(60),
        ),
        color: Colors.red,
      ),
      child: _showChildren
          ? Column(
              children: [
                SizedBox(height: 20),
                Row(
                  children: [
                    IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                    ),
                    Text(
                      'Transactions History',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                // containre has three button all , incoming , outgoing like tap bar
                Container(
                  margin: EdgeInsets.only(bottom: 40, left: 20, right: 20),
                  decoration: BoxDecoration(
                    color: Colors.red.shade200,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TransactionTabBar(
                    selectedIndex: widget.selectedIndex,
                    onTap: widget.onTap,
                  ),
                ),
                Spacer(),
              ],
            )
          : SizedBox.shrink(),
    );
  }
}
