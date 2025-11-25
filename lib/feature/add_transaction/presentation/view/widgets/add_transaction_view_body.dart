import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vodafon/feature/add_transaction/presentation/manager/addtransactionstatic_cubit.dart';
import 'package:vodafon/feature/add_transaction/presentation/view/widgets/custom_text_form_transaction.dart';

import '../../../data/models/add_transaction_model.dart';

class AddTransactionViewBody extends StatefulWidget {
  const AddTransactionViewBody({super.key});

  @override
  State<AddTransactionViewBody> createState() => _AddTransactionViewBodyState();
}

class _AddTransactionViewBodyState extends State<AddTransactionViewBody> {
  bool isSelected = true;
  TextEditingController name = TextEditingController();
  TextEditingController amount = TextEditingController();
  TextEditingController fee = TextEditingController();
  TextEditingController referenceNumber = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String transactionType = 'in';
  @override
  void dispose() {
    name.dispose();
    amount.dispose();
    fee.dispose();
    referenceNumber.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              SizedBox(height: 30),
              CustomTextFormTransaction(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'ادخل الاسم';
                  }
                  return null;
                },
                label: 'اسم المستقبل او الراسل',
                title: 'الاسم',
                controller: name,
              ),
              SizedBox(height: 20),
              CustomTextFormTransaction(
                isPrice: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'ادخل المبلغ';
                  }
                  return null;
                },
                label: 'المبلغ',
                title: 'المبلغ',
                controller: amount,
              ),
              SizedBox(height: 20),
              // CustomTextFormTransaction(
              //   isPrice: true,
              //   validator: (value) {
              //     if (value!.isEmpty) {
              //       return 'ادخل رسوم المعامله';
              //     }
              //     return null;
              //   },
              //   label: 'رسوم المعامله',
              //   title: 'رسوم المعامله',
              //   controller: fee,
              // ),
              //SizedBox(height: 20),
              CustomTextFormTransaction(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'ادخل رقم المرجعي';
                  }
                  return null;
                },
                label: 'الرقم المرجعي',
                title: 'الرقم المرجعي',
                controller: referenceNumber,
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SelectedButton(
                    title: 'استلام',
                    isSelected: isSelected,
                    onPressed: () {
                      setState(() {
                        isSelected = true;
                        transactionType = 'in';
                      });
                    },
                  ),
                  SelectedButton(
                    title: 'ارسال',
                    isSelected: !isSelected,
                    onPressed: () {
                      setState(() {
                        isSelected = false;
                        transactionType = 'out';
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 30),
              BlocConsumer<
                AddtransactionstaticCubit,
                AddtransactionstaticState
              >(
                listener: (context, state) {
                  if (state is AddtransactionstaticError) {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text(state.message)));
                  }
                  if (state is AddtransactionstaticSuccess) {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text(state.message)));
                    Navigator.pop(context);
                  }
                },
                builder: (context, state) {
                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 50),
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        final date = DateTime.now().toString();
                        final transaction = AddTransactionModel(
                          name: name.text,
                          amount: int.parse(amount.text),

                          reference: referenceNumber.text,
                          type: transactionType,
                          time: date,
                        );
                        BlocProvider.of<AddtransactionstaticCubit>(
                          context,
                        ).addTransaction(transaction: transaction);
                      }
                    },
                    child: Text(
                      'اضافة المعامله',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SelectedButton extends StatelessWidget {
  const SelectedButton({
    super.key,
    required this.title,
    required this.isSelected,
    this.onPressed,
  });
  final String title;
  final bool isSelected;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: isSelected ? Colors.red.shade200 : Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}
