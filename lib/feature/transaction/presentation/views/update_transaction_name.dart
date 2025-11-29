import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vodafon/core/services/setup_services_locator.dart';
import 'package:vodafon/core/widgets/app_button.dart';
import 'package:vodafon/core/widgets/loading_widget.dart';
import 'package:vodafon/feature/add_transaction/presentation/view/widgets/custom_text_form_transaction.dart';
import 'package:vodafon/feature/login/presentation/view/widgets/number_text_field.dart';

import '../manager/transaction_data_cubit.dart';

class UpdateTransactionName extends StatefulWidget {
  const UpdateTransactionName({
    super.key,
    required this.transactionId,
    required this.currentName,
    required this.phone,
  });
  final int transactionId;
  final String currentName;
  final String phone;

  @override
  State<UpdateTransactionName> createState() => _UpdateTransactionNameState();
}

class _UpdateTransactionNameState extends State<UpdateTransactionName> {
  late TextEditingController _nameController;
  late TextEditingController _phoneController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.currentName);
    _phoneController = TextEditingController(text: widget.phone);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<TransactionDataCubit>(),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,

          title: const Text('تحديث اسم المعاملة'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 130),
                CustomTextFormTransaction(
                  label: 'اسم المستقبل او الراسل',
                  title: 'الاسم',
                  controller: _nameController,
                ),
                SizedBox(height: 20),
                CustomTextFormTransaction(
                  isPrice: true,
                  label: 'رقم الهاتف',
                  title: 'رقم الهاتف',
                  controller: _phoneController,
                ),
                SizedBox(height: 70),
                BlocConsumer<TransactionDataCubit, TransactionDataState>(
                  listener: (context, state) {
                    if (state is TransactionNameUpdated) {
                      Navigator.pop(context);
                      ScaffoldMessenger.of(
                        context,
                      ).showSnackBar(SnackBar(content: Text(state.message)));

                      Navigator.pop(context, true);
                    }
                    if (state is TransactionDataError) {
                      Navigator.pop(context); // Close loading dialog
                      ScaffoldMessenger.of(
                        context,
                      ).showSnackBar(SnackBar(content: Text(state.message)));
                    }
                    if (state is TransactionDataLoading) {
                      showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (context) => const LoadingWidget(),
                      );
                    }
                  },
                  builder: (context, state) {
                    return ReactiveButton(
                      isActive: true,
                      label: 'تحديث',
                      isLoading: false,
                      onPressed: () {
                        log(_phoneController.text);
                        context
                            .read<TransactionDataCubit>()
                            .updateTransactionName(
                              transactionId: widget.transactionId,
                              newName: _nameController.text,
                              phone: _phoneController.text,
                            );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
