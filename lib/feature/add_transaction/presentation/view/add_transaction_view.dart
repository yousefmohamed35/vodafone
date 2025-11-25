import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/services/setup_services_locator.dart';
import '../manager/addtransactionstatic_cubit.dart';
import 'widgets/add_transaction_view_body.dart';

class AddTransactionView extends StatelessWidget {
  const AddTransactionView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<AddtransactionstaticCubit>(),
      child: Scaffold(
        appBar: AppBar(title: Text('اضافة معاملة'), centerTitle: true),
        body: AddTransactionViewBody(),
      ),
    );
  }
}
