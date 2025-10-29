import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vodafon/feature/add_transaction/data/repo/add_transaction_repo_impl.dart';

import '../manager/addtransactionstatic_cubit.dart';
import 'widgets/add_transaction_view_body.dart';

class AddTransactionView extends StatelessWidget {
  const AddTransactionView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddtransactionstaticCubit(AddTransactionRepoImpl()),
      child: Scaffold(body: AddTransactionViewBody()),
    );
  }
}
